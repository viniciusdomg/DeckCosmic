import 'package:deck_cosmic/features/heroes/domain/entities/hero_entity.dart';

abstract class IHeroRepository {
  Future<List<HeroEntity>> getAllHeroes({required int page, required int limit});

  Future<HeroEntity?> getHeroById(int heroId);

  Future<List<int>> getAllHeroIds();

  Future<int> getMyCardsCount();

  Future<void> addHeroToMyCards(String heroId);

  Future<List<HeroEntity>> getMyCards();

  Future<void> removeHeroFromMyCards(int myCardId, String heroId);

  Future<Map<String, dynamic>> getDailyCardStatus();

  Future<void> setDailyCardStatus(int heroId, String date, bool hasCollected);

  Future<void> setHasCollected(bool hasCollected);
}