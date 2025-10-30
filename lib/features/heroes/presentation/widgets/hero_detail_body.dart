// lib/features/heroes/presentation/widgets/hero_detail_body.dart
import 'package:deck_cosmic/features/heroes/presentation/widgets/build_power_stats_bar.dart';
import 'package:flutter/material.dart';
import 'package:deck_cosmic/features/heroes/domain/entities/hero_entity.dart';
import 'package:deck_cosmic/features/heroes/presentation/widgets/build_image_large.dart';
import 'package:deck_cosmic/features/heroes/presentation/widgets/detail_row.dart';


class HeroDetailBody extends StatelessWidget {
  final HeroEntity hero;
  const HeroDetailBody({super.key, required this.hero});

  String _buildDescriptionText() {
    final List<String> parts = [];

    if (hero.biography.fullName.isNotEmpty && hero.biography.fullName != '-') {
      parts.add(hero.biography.fullName);
    }
    if (hero.work.occupation.isNotEmpty && hero.work.occupation != '-') {
      parts.add(hero.work.occupation);
    }
    if (hero.biography.placeOfBirth.isNotEmpty &&
        hero.biography.placeOfBirth != '-') {
      parts.add('Born in ${hero.biography.placeOfBirth}');
    }
    if (hero.biography.firstAppearance.isNotEmpty &&
        hero.biography.firstAppearance != '-') {
      parts.add('First appeared in ${hero.biography.firstAppearance}');
    }
    if (hero.biography.publisher.isNotEmpty &&
        hero.biography.publisher != '-') {
      parts.add('Published by ${hero.biography.publisher}');
    }
    if (hero.biography.alignment.isNotEmpty &&
        hero.biography.alignment != '-') {
      parts.add('Alignment: ${hero.biography.alignment}');
    }

    if (hero.connections.groupAffiliation.isNotEmpty &&
        hero.connections.groupAffiliation != '-') {
      parts.add('Affiliations: ${hero.connections.groupAffiliation}');
    }
    if (hero.connections.relatives.isNotEmpty &&
        hero.connections.relatives != '-') {
      parts.add('Relatives: ${hero.connections.relatives}');
    }

    if (parts.isEmpty) {
      return 'No detailed biography available.';
    }

    return '${parts.join('. ')}.';
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final description = _buildDescriptionText();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Card(
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
          child: Column(children: [
            BuildImageLarge(
              hero: hero,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Biography & Work',
                    style: textTheme.titleLarge?.copyWith(
                      fontFamily: 'Bangers',
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                  const Divider(),
                  Text(
                    description,
                    style: textTheme.bodyLarge,
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Powerstats',
                    style: textTheme.titleLarge?.copyWith(
                      fontFamily: 'Bangers',
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                  const Divider(),
                  BuildPowerStatsBar(hero: hero),
                ],
              ),
            ),
          ]),
        ),
        const SizedBox(height: 24),
        Text(
          'Appearance',
          style: textTheme.titleLarge?.copyWith(
            fontFamily: 'Bangers',
            color: Theme.of(context).colorScheme.onPrimary,
          ),
        ),
        const Divider(),
        DetailRow(title: 'Gender', value: hero.appearance.gender),
        DetailRow(title: 'Race', value: hero.appearance.race),
        DetailRow(title: 'Height', value: hero.appearance.height),
        DetailRow(title: 'Weight', value: hero.appearance.weight),
        DetailRow(title: 'Eye Color', value: hero.appearance.eyeColor),
        DetailRow(title: 'Hair Color', value: hero.appearance.hairColor),
        const SizedBox(height: 24),
      ],
    );
  }
}