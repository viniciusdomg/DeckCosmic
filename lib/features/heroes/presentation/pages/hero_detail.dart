import 'package:deck_cosmic/features/heroes/presentation/widgets/build_image_large.dart';
import 'package:deck_cosmic/features/heroes/presentation/widgets/build_power_stats_bar.dart';
import 'package:deck_cosmic/features/heroes/presentation/widgets/detail_row.dart';
import 'package:deck_cosmic/features/heroes/presentation/widgets/hero_detail_body.dart';
import 'package:flutter/material.dart';
import 'package:deck_cosmic/features/heroes/domain/entities/hero_entity.dart';

class HeroDetail extends StatelessWidget {
  final HeroEntity hero;
  const HeroDetail({super.key, required this.hero});



  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: Text(hero.name),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: HeroDetailBody(hero: hero)
        ),
      ),
    );
  }
}
