import 'package:flutter/foundation.dart';
import 'package:deck_cosmic/features/heroes/domain/entities/hero_entity.dart';
import 'package:deck_cosmic/features/heroes/domain/repository/hero_repository.dart';

enum BattleState { loading, playing, empty, finished }

class BattlefieldNotifier extends ChangeNotifier {
  final IHeroRepository repository;
  BattlefieldNotifier({required this.repository});

  BattleState _state = BattleState.loading;
  BattleState get state => _state;

  List<HeroEntity> _shuffledCards = [];
  List<HeroEntity> get shuffledCards => _shuffledCards;

  int _currentIndex = 0;
  int get currentIndex => _currentIndex;

  HeroEntity? get currentCard => _shuffledCards.isEmpty ? null : _shuffledCards[_currentIndex];

  Future<void> loadAndShuffleCards() async {
    try {
      _state = BattleState.loading;
      notifyListeners();

      final myCards = await repository.getMyCards();

      if (myCards.isEmpty) {
        _state = BattleState.empty;
        notifyListeners();
        return;
      }

      myCards.shuffle();
      _shuffledCards = myCards;
      _currentIndex = 0;
      _state = BattleState.playing;

    } catch (e) {
      _state = BattleState.empty;
    } finally {
      notifyListeners();
    }
  }

  void nextCard() {
    if (_currentIndex < _shuffledCards.length - 1) {
      _currentIndex++;
      notifyListeners();
    } else {
      _state = BattleState.finished;
      notifyListeners();
    }
  }
}