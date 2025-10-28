import 'package:deck_cosmic/features/heroes/domain/entities/hero_entity.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BuildImageLarge extends StatelessWidget {
  final HeroEntity hero;
  const BuildImageLarge ({super.key, required this.hero});

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: hero.images.lg,
      width: double.infinity,
      height: 500,
      fit: BoxFit.cover,
      placeholder: (context, url) => Container(
        height: 300,
        color: Colors.grey[300],
        child: const Center(child: CircularProgressIndicator()),
      ),
      errorWidget: (context, url, error) => Container(
        height: 300,
        color: Colors.grey[300],
        child: const Icon(Icons.error, color: Colors.red, size: 50),
      ),
    );
  }
}
