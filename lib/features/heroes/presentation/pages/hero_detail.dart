import 'package:deck_cosmic/features/heroes/domain/entities/hero_entity.dart';
import 'package:flutter/material.dart';

class HeroDetail extends StatelessWidget {
  final HeroEntity hero;
  const HeroDetail({super.key, required this.hero});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("data"),
    );
  }
}
