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
}