import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:deck_cosmic/features/heroes/domain/entities/appearance_entity.dart';

part 'appearance_model.freezed.dart';
part 'appearance_model.g.dart';

@freezed
abstract class AppearanceModel with _$AppearanceModel {
  const factory AppearanceModel({
    required String gender,
    required String race,
    required List<String> height,
    required List<String> weight,
    required String eyeColor,
    required String hairColor,
  }) = _AppearanceModel;

  factory AppearanceModel.fromJson(Map<String, dynamic> json) =>
      _$AppearanceModelFromJson(json);
}

extension AppearanceModelX on AppearanceModel {
  AppearanceEntity toEntity() {
    return AppearanceEntity(
      gender: gender,
      race: race,
      // Pega o valor métrico (em cm), que é o segundo item da lista
      height: height.length > 1 ? height[1] : (height.isNotEmpty ? height[0] : '-'),
      // Pega o valor métrico (em kg), que é o segundo item da lista
      weight: weight.length > 1 ? weight[1] : (weight.isNotEmpty ? weight[0] : '-'),
      eyeColor: eyeColor,
      hairColor: hairColor,
    );
  }
}