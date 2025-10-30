import 'package:deck_cosmic/features/battle/presentation/provider/battlefield_notifier.dart';
import 'package:deck_cosmic/features/daily_card/presentation/provider/daily_card_notifier.dart';
import 'package:deck_cosmic/features/my_cards/presentation/provider/my_cards_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:deck_cosmic/features/home/presentation/pages/main_navigation.dart';
import 'package:deck_cosmic/theme/theme.dart';
import 'package:deck_cosmic/theme/util.dart';
import 'package:deck_cosmic/injection_container.dart' as di;
import 'package:deck_cosmic/features/heroes/presentation/providers/hero_list_notifier.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = createTextTheme(context, "Bangers", "Montserrat");

    MaterialTheme theme = MaterialTheme(textTheme);
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => di.getIt<HeroListNotifier>()),
        ChangeNotifierProvider(create: (_) => di.getIt<DailyCardNotifier>()),
        ChangeNotifierProvider(create: (_) => di.getIt<BattlefieldNotifier>()),
        ChangeNotifierProvider(create: (_) => di.getIt<MyCardsNotifier>()),
      ],

      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Deck Cosmic',
        theme: theme.light(),
        darkTheme: theme.dark(),
        home: const MainNavigation(initialIndex: 1),
        builder: (context, child) {
          return Stack(
            children: [
              Opacity(
                opacity: 0.3,
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/comic_background.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              child ?? Container(),
            ],
          );
        },
      ),
    );
  }
}
