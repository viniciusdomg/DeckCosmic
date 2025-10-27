import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:deck_cosmic/features/heroes/domain/entities/appearance_entity.dart';

part 'appearance_model.freezed.dart';
part 'appearance_model.g.dart';

@freezed
abstract class AppearanceModel with _$AppearanceModel {
  const factory AppearanceModel({
    String? gender,
    String? race,
    required List<String> height,
    required List<String> weight,
    String? eyeColor,
    String? hairColor,
  }) = _AppearanceModel;

  factory AppearanceModel.fromJson(Map<String, dynamic> json) =>
      _$AppearanceModelFromJson(json);
}

extension AppearanceModelX on AppearanceModel {
  AppearanceEntity toEntity() {
    return AppearanceEntity(
      gender: gender ?? '-',
      race: race ?? 'N/A',
      height: height.length > 1 ? height[1] : (height.isNotEmpty ? height[0] : '-'),
      weight: weight.length > 1 ? weight[1] : (weight.isNotEmpty ? weight[0] : '-'),
      eyeColor: eyeColor ?? '-',
      hairColor: hairColor ?? '-',
    );
  }
}