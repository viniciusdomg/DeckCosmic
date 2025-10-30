import 'package:flutter/foundation.dart';
import 'package:deck_cosmic/features/heroes/domain/entities/hero_entity.dart';
import 'package:deck_cosmic/features/heroes/domain/repository/hero_repository.dart';

enum MyCardsState { loading, loaded, empty, error }

class MyCardsNotifier extends ChangeNotifier {
  final IHeroRepository repository;
  MyCardsNotifier({required this.repository});

  MyCardsState _state = MyCardsState.loading;
  MyCardsState get state => _state;

  List<HeroEntity> _cards = [];
  List<HeroEntity> get cards => _cards;

  String _errorMessage = '';
  String get errorMessage => _errorMessage;

  Future<void> loadCards() async {
    try {
      _state = MyCardsState.loading;
      notifyListeners();

      _cards = await repository.getMyCards();

      if (_cards.isEmpty) {
        _state = MyCardsState.empty;
      } else {
        _state = MyCardsState.loaded;
      }
    } catch (e) {
      _errorMessage = e.toString();
      _state = MyCardsState.error;
    } finally {
      notifyListeners();
    }
  }

  // Este método é chamado pela tela de detalhes
  Future<bool> removeCard(String heroId) async {
    try {
      await repository.removeHeroFromMyCards(0, heroId);
      // Remove da lista local para atualizar a UI imediatamente
      _cards.removeWhere((hero) => hero.id == heroId);
      if (_cards.isEmpty) {
        _state = MyCardsState.empty;
      }
      notifyListeners();
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }
}