import 'package:deck_cosmic/features/heroes/data/model/hero_model.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:deck_cosmic/features/heroes/data/datasources/hero_local_datasource.dart';
import 'package:deck_cosmic/features/heroes/data/datasources/hero_remote_datasource.dart';
import 'package:deck_cosmic/features/heroes/data/datasources/hero_remote_datasource_impl.dart';
import 'package:deck_cosmic/features/heroes/data/repository/hero_repository_impl.dart';
import 'package:deck_cosmic/features/heroes/domain/repository/hero_repository.dart';
import 'package:deck_cosmic/features/heroes/presentation/providers/hero_list_notifier.dart';

// (Importe aqui a implementação do seu IHeroLocalDataSource quando a criar)
// import 'package:deck_cosmic/features/heroes/data/datasources/hero_local_datasource_impl.dart';

final getIt = GetIt.instance;

void setupLocator() {
  // 1. STATE (Presentation)
  // Notifiers são registrados como 'factory' porque o Provider
  // vai cuidar do ciclo de vida deles (criar e dar dispose).
  getIt.registerFactory(
        () => HeroListNotifier(heroRepository: getIt()),
  );
  // (Registre seus outros notifiers aqui: DailyCardNotifier, MyCardsNotifier...)

  // 2. REPOSITORIES (Domain/Data)
  // Registramos a implementação (Impl) usando a interface (IHeroRepository)
  // como "tipo". Isso é Inversão de Dependência (o 'D' do SOLID).
  getIt.registerLazySingleton<IHeroRepository>(
        () => HeroRepositoryImpl(
      remoteDataSource: getIt(),
      localDataSource: getIt(), // (Isso vai funcionar quando registrarmos o local)
    ),
  );

  // 3. DATASOURCES (Data)
  getIt.registerLazySingleton<IHeroRemoteDataSource>(
        () => HeroRemoteDataSourceImpl(dio: getIt()),
  );

  // TODO: Substituir este 'Mock' pela sua implementação real do SQFlite
  // Por enquanto, vamos registrar um "Mock" para não quebrar o app.
  getIt.registerLazySingleton<IHeroLocalDataSource>(
        () => MockHeroLocalDataSourceImpl(),
  );

  // 4. EXTERNAL (Dependências externas)
  // Registramos o Dio como um singleton.
  getIt.registerLazySingleton<Dio>(
        () => Dio(BaseOptions(
      baseUrl: 'http://localhost:3000', // A URL base do seu json-server
    )),
  );
}

// TODO: Pode apagar esta classe mock depois
// Classe temporária apenas para o getIt não falhar
class MockHeroLocalDataSourceImpl implements IHeroLocalDataSource {
  @override
  Future<void> cacheHeroList(List heroesToCache) async {
    // Não faz nada
  }

  @override
  Future<List<HeroModel>?> getLastHeroList() async {
    return [];
  }


}