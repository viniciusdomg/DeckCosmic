import 'package:deck_cosmic/features/heroes/domain/entities/hero_entity.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class BuildImageSmall extends StatelessWidget {
  final HeroEntity hero;
  const BuildImageSmall({super.key, required this.hero});

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: hero.images.sm,
      width: 110,
      height: 170,
      fit: BoxFit.cover,
      placeholder: (context, url) => Container(
        width: 110,
        height: 170,
        color: Colors.grey[300],
        child: const Center(child: CircularProgressIndicator()),
      ),
      errorWidget: (context, url, error) => Container(
        width: 110,
        height: 170,
        color: Colors.grey[300],
        child: const Icon(Icons.error, color: Colors.red),
      ),
    );
  }
}
