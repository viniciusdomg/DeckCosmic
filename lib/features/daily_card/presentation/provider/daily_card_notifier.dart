import 'package:flutter/foundation.dart';
import 'package:intl/intl.dart';
import 'dart:math';
import 'package:deck_cosmic/features/heroes/domain/entities/hero_entity.dart';
import 'package:deck_cosmic/features/heroes/domain/repository/hero_repository.dart';

enum DailyCardState { loading, loaded, error }

class DailyCardNotifier extends ChangeNotifier {
  final IHeroRepository repository;
  DailyCardNotifier({required this.repository});

  DailyCardState _state = DailyCardState.loading;
  DailyCardState get state => _state;

  HeroEntity? _hero;
  HeroEntity? get hero => _hero;

  bool _hasCollected = false;
  bool get hasCollected => _hasCollected;

  String _errorMessage = '';
  String get errorMessage => _errorMessage;

  int? _dailyHeroId;

  String _getTodayDateString() {
    return DateFormat('yyyy-MM-dd').format(DateTime.now());
  }

  Future<void> loadDailyHero() async {
    try {
      _state = DailyCardState.loading;
      notifyListeners();

      final String today = _getTodayDateString();
      final status = await repository.getDailyCardStatus();

      final String? lastDate = status['date'];

      int? heroId = status['heroId'];

      if (lastDate == today && heroId != null) {
          _hasCollected = status['hasCollected'];

      } else {
        final ids = await repository.getAllHeroIds();
        if (ids.isEmpty) {
          throw Exception('Nenhum herói encontrado no banco para sortear.');
        }
        heroId = ids[Random().nextInt(ids.length)];

        await repository.setDailyCardStatus(heroId, today, false);
        _hasCollected = false;
      }

      _hero = await repository.getHeroById(heroId);
      _dailyHeroId = heroId;

      if (_hero == null) {
        throw Exception('Herói sorteado (ID: $heroId) não foi encontrado no banco.');
      }

      _state = DailyCardState.loaded;
    } catch (e) {
      _errorMessage = e.toString();
      _state = DailyCardState.error;
    } finally {
      notifyListeners();
    }
  }

  Future<String> collectHero() async {
    if (_dailyHeroId == null) return "Erro: Herói do dia não carregado.";

    try {
      final count = await repository.getMyCardsCount();
      if (count >= 15) {
        return 'Sua coleção está cheia (Limite de 15 cartas).';
      }

      await repository.addHeroToMyCards(_dailyHeroId!.toString());

      await repository.setHasCollected(true);
      _hasCollected = true;
      notifyListeners();
      return 'Herói obtido com sucesso!';

    } catch (e) {
      return 'Erro ao obter herói: $e';
    }
  }
}