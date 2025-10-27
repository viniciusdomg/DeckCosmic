import 'package:deck_cosmic/features/heroes/data/datasources/hero_local_datasource.dart';
import 'package:deck_cosmic/features/heroes/data/datasources/hero_remote_datasource.dart';
import 'package:deck_cosmic/features/heroes/data/model/hero_model.dart';
import 'package:deck_cosmic/features/heroes/domain/entities/hero_entity.dart';
import 'package:deck_cosmic/features/heroes/domain/repository/hero_repository.dart';
import 'package:deck_cosmic/core/error/exceptions.dart';

class HeroRepositoryImpl implements IHeroRepository {
  final IHeroRemoteDataSource remoteDataSource;
  final IHeroLocalDataSource localDataSource;
  // (Você vai adicionar o LocalDataSource aqui depois)

  HeroRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
  });

  @override
  Future<List<HeroEntity>> getAllHeroes({required int page, required int limit}) async {
    try {
      final heroModels = await remoteDataSource.getAllHeroes(page: page, limit: limit);

      // 2. Se conseguir, salva no cache local (SQFlite)
      // (Implementaremos o localDataSource depois, mas a chamada já fica aqui)
      // await localDataSource.cacheHeroList(heroModels);

      // 3. Traduz os Modelos (sujos) para Entidades (limpas) e retorna
      return heroModels.map((model) => model.toEntity()).toList();

    } on ServerException {
      // 4. Se a API falhar (ex: sem internet)...
      try {
        // ...tenta buscar do cache (Local)
        final localHeroModels = await localDataSource.getLastHeroList();
        if(localHeroModels == null) throw CacheException('Falha ao buscar dados. Sem cache local.');
        return localHeroModels.map((model) => model.toEntity()).toList();
      } on CacheException {
        throw Exception('Falha ao buscar dados. Sem cache local.');
      }
    }
  }
}