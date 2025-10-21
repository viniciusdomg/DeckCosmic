import 'package:flutter/material.dart';
import 'package:deck_cosmic/features/heroes/domain/entities/hero_entity.dart';
import 'package:deck_cosmic/features/heroes/domain/repository/hero_repository.dart';

class HeroListNotifier extends ChangeNotifier {
  final IHeroRepository heroRepository;

  HeroListNotifier({required this.heroRepository});

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  bool _hasFetched = false;

  List<HeroEntity> _heroes = [];
  List<HeroEntity> get heroes => _heroes;

  // O método que a UI vai chamar
  Future<void> fetchHeroesIfNeeded() async {
    if (_isLoading || _hasFetched) return;

    _isLoading = true;
    notifyListeners(); // Mostra o loading

    try {
      // AQUI ESTÁ A CHAMADA!
      // O Notifier não sabe se vem da API ou do Cache.
      // Ele só pede para o Repositório.
      _heroes = await heroRepository.getAllHeroes();

      _hasFetched = true;
    } catch (e) {
      // TODO: Tratar o erro (ex: mostrar uma mensagem na tela)
      print(e.toString());
    }

    _isLoading = false;
    notifyListeners();
  }
}