import 'package:deck_cosmic/features/heroes/domain/entities/hero_entity.dart';

abstract class IHeroRepository {
  Future<List<HeroEntity>> getAllHeroes();
}