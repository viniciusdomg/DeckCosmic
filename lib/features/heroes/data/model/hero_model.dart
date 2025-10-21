import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:deck_cosmic/features/heroes/data/model/powerstats_model.dart';
import 'package:deck_cosmic/features/heroes/data/model/appearance_model.dart';
import 'package:deck_cosmic/features/heroes/data/model/biography_model.dart';
import 'package:deck_cosmic/features/heroes/data/model/hero_images_model.dart';
import 'package:deck_cosmic/features/heroes/domain/entities/hero_entity.dart';

part 'hero_model.freezed.dart';
part 'hero_model.g.dart';

@freezed
abstract class HeroModel with _$HeroModel {
  const factory HeroModel({
    required String id,
    required String name,
    required PowerstatsModel powerstats,
    required AppearanceModel appearance,
    required BiographyModel biography,
    required HeroImagesModel images,
    // Note: 'work' e 'connections' estão sendo ignorados aqui
    // para simplificar, mas você pode adicioná-los seguindo o mesmo padrão.
  }) = _HeroModel;

  factory HeroModel.fromJson(Map<String, dynamic> json) =>
      _$HeroModelFromJson(json);
}

extension HeroModelX on HeroModel {
  HeroEntity toEntity() {
    return HeroEntity(
      id: id,
      name: name,
      powerstats: powerstats.toEntity(),
      appearance: appearance.toEntity(),
      biography: biography.toEntity(),
      images: images.toEntity(),
    );
  }
}