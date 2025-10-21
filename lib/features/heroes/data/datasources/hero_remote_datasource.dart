import 'package:deck_cosmic/features/heroes/data/model/hero_model.dart';

abstract class IHeroRemoteDataSource {
  Future<List<HeroModel>> getAllHeroes();
}