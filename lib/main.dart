import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:deck_cosmic/features/home/presentation/pages/main_navigation.dart';
import 'package:deck_cosmic/theme/theme.dart';
import 'package:deck_cosmic/theme/util.dart';
import 'package:deck_cosmic/injection_container.dart' as di;
import 'package:deck_cosmic/features/heroes/presentation/providers/hero_list_notifier.dart';

void main() {
  di.setupLocator();
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
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Deck Cosmic',
        theme: theme.light(),
        darkTheme: theme.dark(),
        home: const MainNavigation(initialIndex: 0),
      ),
    );
  }
}
