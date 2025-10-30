import 'package:deck_cosmic/features/heroes/domain/entities/hero_entity.dart';
import 'package:flutter/material.dart';
import 'stats_bar.dart';

class BuildPowerStatsBar extends StatelessWidget {
  final HeroEntity hero;
  const BuildPowerStatsBar({super.key, required this.hero});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            children: [
              StatsBar(
                  name: 'Intelligence',
                  value: hero.powerstats.intelligence,
                  color: Colors.blue),
              StatsBar(
                  name: 'Strength',
                  value: hero.powerstats.strength,
                  color: Colors.red),
              StatsBar(
                  name: 'Speed',
                  value: hero.powerstats.speed,
                  color: Colors.green),
            ],
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            children: [
              StatsBar(
                  name: 'Durability',
                  value: hero.powerstats.durability,
                  color: Colors.grey),
              StatsBar(
                  name: 'Power',
                  value: hero.powerstats.power,
                  color: Colors.purple),
              StatsBar(
                  name: 'Combat',
                  value: hero.powerstats.combat,
                  color: Colors.orange),
            ],
          ),
        ),
      ],
    );
  }
}
