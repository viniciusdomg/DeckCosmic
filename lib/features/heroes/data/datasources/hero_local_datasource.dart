import 'package:deck_cosmic/features/heroes/data/model/hero_model.dart';

const String PREF_DAILY_HERO_ID = 'daily_hero_id';
const String PREF_DAILY_HERO_DATE = 'daily_hero_date';
const String PREF_HAS_COLLECTED = 'has_collected_today';

abstract class IHeroLocalDataSource {
  Future<void> cacheHeroList(List<HeroModel> heroesToCache);

  Future<List<HeroModel>?> getLastHeroList({required int page, required int limit});

  Future<HeroModel?> getHeroById(int id);

  Future<List<int>> getAllHeroIds();

  Future<int> getMyCardsCount();

  Future<void> addHeroToMyCards(String heroId);

  Future<List<HeroModel>> getMyCards();

  Future<void> removeHeroFromMyCards(String heroId);

  Future<Map<String, dynamic>> getDailyCardStatus();

  Future<void> setDailyCardStatus(int heroId, String date, bool hasCollected);

  Future<void> setHasCollected(bool hasCollected);
}