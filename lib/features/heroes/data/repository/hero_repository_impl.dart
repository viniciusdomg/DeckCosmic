import 'package:deck_cosmic/features/heroes/data/datasources/hero_local_datasource.dart';
import 'package:deck_cosmic/features/heroes/data/datasources/hero_remote_datasource.dart';
import 'package:deck_cosmic/features/heroes/data/model/hero_model.dart';
import 'package:deck_cosmic/features/heroes/domain/entities/hero_entity.dart';
import 'package:deck_cosmic/features/heroes/domain/repository/hero_repository.dart';
import 'package:deck_cosmic/core/error/exceptions.dart';

class HeroRepositoryImpl implements IHeroRepository {
  final IHeroRemoteDataSource remoteDataSource;
  final IHeroLocalDataSource localDataSource;

  HeroRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
  });

  @override
  Future<List<HeroEntity>> getAllHeroes({required int page, required int limit}) async {
    try {
      print("entrando no try");
      final heroModels = await remoteDataSource.getAllHeroes(page: page, limit: limit);
      print("chegando na busca da api por herois ${heroModels.length}");

      // Não precisamos "esperar" por isso para mostrar na tela;
      await localDataSource.cacheHeroList(heroModels);

      return heroModels.map((model) => model.toEntity()).toList();

    } on ServerException {
      try {

        final localHeroModels = await localDataSource.getLastHeroList(page: page, limit: limit);
        print("chegando na listagem do banco");
        if(localHeroModels == null || localHeroModels.isEmpty) {
          throw CacheException('Sem conexão e sem cache local disponível.');
        }

        return localHeroModels.map((model) => model.toEntity()).toList();
      } on CacheException catch (e) {
        print("chegando nesse print ${e.message}");
        throw Exception(e.message);
      }
    }
  }

  @override
  Future<HeroEntity?> getHeroById(int heroId) async {
    final heroModel = await localDataSource.getHeroById(heroId);
    if (heroModel != null) {
      return heroModel.toEntity();
    }

    return null;
  }

  @override
  Future<void> addHeroToMyCards(String heroId) async {
    if(heroId.isEmpty) return;

    await localDataSource.addHeroToMyCards(heroId);
  }

  @override
  Future<List<int>> getAllHeroIds() async {
    return await localDataSource.getAllHeroIds();
  }

  @override
  Future<List<HeroEntity>> getMyCards() async {
    final heroModels = await localDataSource.getMyCards();
    if(heroModels.isEmpty) return [];

    return heroModels.map((model) => model.toEntity()).toList();
  }

  @override
  Future<int> getMyCardsCount() async {
    return await localDataSource.getMyCardsCount();
  }

  @override
  Future<void> removeHeroFromMyCards(int myCardId, String heroId) async {
    if(heroId.isEmpty) return;

    return await localDataSource.removeHeroFromMyCards(heroId);
  }

  @override
  Future<Map<String, dynamic>> getDailyCardStatus() async {
    return await localDataSource.getDailyCardStatus();
  }

  @override
  Future<void> setDailyCardStatus(int heroId, String date, bool hasCollected) async {
    return await localDataSource.setDailyCardStatus(heroId, date, hasCollected);
  }

  @override
  Future<void> setHasCollected(bool hasCollected) async {
    return await localDataSource.setHasCollected(hasCollected);
  }
}