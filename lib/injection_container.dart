import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:deck_cosmic/features/heroes/data/datasources/hero_local_datasource.dart';
import 'package:deck_cosmic/features/heroes/data/datasources/hero_remote_datasource.dart';
import 'package:deck_cosmic/features/heroes/data/datasources/hero_remote_datasource_impl.dart';
import 'package:deck_cosmic/features/heroes/data/repository/hero_repository_impl.dart';
import 'package:deck_cosmic/features/heroes/domain/repository/hero_repository.dart';
import 'package:deck_cosmic/features/heroes/presentation/providers/hero_list_notifier.dart';

import 'features/heroes/data/datasources/hero_local_datasource_impl.dart';

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
      localDataSource: getIt(),
    ),
  );


  // 3. DATASOURCES (Data)
  getIt.registerLazySingleton<IHeroRemoteDataSource>(
        () => HeroRemoteDataSourceImpl(dio: getIt()),
  );

  getIt.registerLazySingleton<IHeroLocalDataSource>(
        () => HeroLocalDataSourceImpl(),
  );


  // 4. EXTERNAL
  getIt.registerLazySingleton<Dio>(
        () => Dio(BaseOptions(
      baseUrl: 'http://10.0.2.2:3000',
    )),
  );
}
