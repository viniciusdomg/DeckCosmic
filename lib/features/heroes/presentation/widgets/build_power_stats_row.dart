import 'package:deck_cosmic/features/heroes/domain/entities/hero_entity.dart';
import 'power_stat_icon.dart';
import 'package:flutter/material.dart';

class BuildPowerStatsRow extends StatelessWidget {
  final HeroEntity hero;
  const BuildPowerStatsRow({super.key, required this.hero});

  @override
  Widget build(BuildContext context) {

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        PowerStatIcon(
          icon: Icons.hdr_strong,
          value: hero.powerstats.strength,
          color: Colors.red,
        ),
        PowerStatIcon(
          icon: Icons.psychology_outlined,
          value: hero.powerstats.intelligence,
          color: Colors.blue,
        ),
        PowerStatIcon(
          icon: Icons.directions_run_rounded,
          value: hero.powerstats.speed,
          color: Colors.green,
        ),
      ],
    );
  }
}
