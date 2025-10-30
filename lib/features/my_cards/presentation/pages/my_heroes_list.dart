import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:deck_cosmic/features/my_cards/presentation/provider/my_cards_notifier.dart';
import 'package:deck_cosmic/features/heroes/presentation/widgets/hero_card.dart';

class MyHeroesList extends StatefulWidget {
  const MyHeroesList({super.key});

  @override
  State<MyHeroesList> createState() => _MyHeroesListState();
}

class _MyHeroesListState extends State<MyHeroesList> {
  @override
  void initState() {
    super.initState();
    // Carrega as cartas ao entrar na tela
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<MyCardsNotifier>(context, listen: false).loadCards();
    });
  }

  @override
  Widget build(BuildContext context) {
    final notifier = context.watch<MyCardsNotifier>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Minhas Cartas'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        child: _buildBody(context, notifier),
      ),
    );
  }

  Widget _buildBody(BuildContext context, MyCardsNotifier notifier) {
    switch (notifier.state) {
      case MyCardsState.loading:
        return const Center(child: CircularProgressIndicator());
      case MyCardsState.error:
        return Center(child: Text(notifier.errorMessage, style: const TextStyle(color: Colors.red)));
      case MyCardsState.empty:
        return const Center(
          child: Text(
            'Você ainda não possui cartas.\nObtenha seu Card Diário!',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        );
      case MyCardsState.loaded:
        return ListView.builder(
          padding: const EdgeInsets.only(top: kToolbarHeight + 20, left: 8, right: 8),
          itemCount: notifier.cards.length,
          itemBuilder: (context, index) {
            final hero = notifier.cards[index];
            return HeroCard(
              hero: hero,
              route: 'myHeroDetail',
            );
          },
        );
    }
  }
}