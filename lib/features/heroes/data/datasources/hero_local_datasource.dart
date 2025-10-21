import 'package:deck_cosmic/features/heroes/data/model/hero_model.dart';

abstract class IHeroLocalDataSource {
  Future<void> cacheHeroList(List<HeroModel> heroesToCache);

  Future<List<HeroModel>?> getLastHeroList();
}