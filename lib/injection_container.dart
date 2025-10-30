import 'package:deck_cosmic/features/battle/presentation/provider/battlefield_notifier.dart';
import 'package:deck_cosmic/features/daily_card/presentation/provider/daily_card_notifier.dart';
import 'package:deck_cosmic/features/my_cards/presentation/provider/my_cards_notifier.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:deck_cosmic/features/heroes/data/datasources/hero_local_datasource.dart';
import 'package:deck_cosmic/features/heroes/data/datasources/hero_remote_datasource.dart';
import 'package:deck_cosmic/features/heroes/data/datasources/hero_remote_datasource_impl.dart';
import 'package:deck_cosmic/features/heroes/data/repository/hero_repository_impl.dart';
import 'package:deck_cosmic/features/heroes/domain/repository/hero_repository.dart';
import 'package:deck_cosmic/features/heroes/presentation/providers/hero_list_notifier.dart';
import 'features/heroes/data/datasources/hero_local_datasource_impl.dart';


final getIt = GetIt.instance;

Future<void> setupLocator() async {
  // 1. STATE (Presentation)
  // Notifiers são registrados como 'factory' porque o Provider
  // vai cuidar do ciclo de vida deles (criar e dar dispose).
  getIt.registerFactory(
        () => HeroListNotifier(repository: getIt()),
  );

  getIt.registerFactory(
        () => DailyCardNotifier(repository: getIt()),
  );

  getIt.registerFactory(
        () => BattlefieldNotifier(repository: getIt()),
  );

  getIt.registerFactory(
      () => MyCardsNotifier(repository: getIt()),
  );


  // 2. REPOSITORIES (Domain/Data)
  // Inversão de Dependência
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
        () => HeroLocalDataSourceImpl(sharedPreferences: getIt()),
  );


  // 4. EXTERNAL
  getIt.registerLazySingleton<Dio>(
        () => Dio(BaseOptions(
      baseUrl: 'http://10.0.2.2:3000',
    )),
  );

  final sharedPreferences = await SharedPreferences.getInstance();
  getIt.registerLazySingleton<SharedPreferences>(() => sharedPreferences);
}
