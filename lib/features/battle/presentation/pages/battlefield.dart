import 'package:deck_cosmic/features/heroes/presentation/widgets/build_power_stats_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:deck_cosmic/features/heroes/domain/entities/hero_entity.dart';
import 'package:deck_cosmic/features/heroes/presentation/widgets/build_image_large.dart';
import 'package:deck_cosmic/features/heroes/presentation/widgets/build_power_stats_row.dart';

import '../provider/battlefield_notifier.dart';

class Battlefield extends StatefulWidget {
  const Battlefield({super.key});

  @override
  State<Battlefield> createState() => _BattlefieldState();
}

class _BattlefieldState extends State<Battlefield> {

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<BattlefieldNotifier>(context, listen: false).loadAndShuffleCards();
    });
  }

  @override
  Widget build(BuildContext context) {
    final notifier = context.watch<BattlefieldNotifier>();
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      extendBodyBehindAppBar: true,
      body: SizedBox(
        width: double.infinity,
        child: _buildBody(context, notifier, textTheme),
      ),
    );
  }

  Widget _buildBody(BuildContext context, BattlefieldNotifier notifier, TextTheme text) {
    switch (notifier.state) {
      case BattleState.loading:
        return const Center(child: CircularProgressIndicator());
      case BattleState.empty:
        return _buildEmptyState();
      case BattleState.finished:
        return _buildEndGame(context, notifier, text);
      case BattleState.playing:
        if (notifier.currentCard == null) return _buildEmptyState();
        return Column(
          children: [
            Expanded(
              child: _buildBattleCard(notifier.currentCard!, notifier, text),
            ),
            _buildBattleControls(context, notifier),
          ],
        );
    }
  }

  Widget _buildBattleCard(HeroEntity hero, BattlefieldNotifier notifier, TextTheme textTheme) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Card(
        elevation: 10,
        margin: const EdgeInsets.only(
            top: 16.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: BorderSide(
              color: Theme.of(context).colorScheme.primary,
              width: 3),
        ),
        clipBehavior:
        Clip.antiAlias,
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              BuildImageLarge(hero: hero,),
              const SizedBox(height: 16),
              Text(
                hero.name,
                style: textTheme.headlineMedium?.copyWith(
                  fontFamily: 'Bangers',
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              const SizedBox(height: 16),
              BuildPowerStatsBar(hero: hero),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBattleControls(BuildContext context, BattlefieldNotifier notifier) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            onPressed: notifier.nextCard,
            child: const Text('Perdi', style: TextStyle(color: Colors.white)),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.grey),
            onPressed: notifier.nextCard,
            child: const Text('Empate', style: TextStyle(color: Colors.white)),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
            onPressed: notifier.nextCard,
            child: const Text('Ganhei', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }

  Widget _buildEndGame(BuildContext context, BattlefieldNotifier notifier, TextTheme textTheme) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('FIM DE JOGO!',
            style: textTheme.bodyLarge?.copyWith(
                color: Theme.of(context).colorScheme.onPrimary
            ),
          ),
          const SizedBox(height: 20),
          Text(
            'Todas as ${notifier.shuffledCards.length} cartas foram usadas.',
            style: textTheme.bodyMedium?.copyWith(
              color: Theme.of(context).colorScheme.onPrimary
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: notifier.loadAndShuffleCards,
            child: const Text('Jogar Novamente'),
          ),
        ],
      ),
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Sem cartas para batalhar!', style: TextStyle(color: Colors.white, fontSize: 18),),
          const SizedBox(height: 20),
          Text(
            'Vá para "Card Diário" e obtenha suas cartas.',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 16)
          ),
        ],
      ),
    );
  }
}