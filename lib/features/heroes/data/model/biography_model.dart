import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:deck_cosmic/features/heroes/domain/entities/biography_entity.dart';

part 'biography_model.freezed.dart';
part 'biography_model.g.dart';

@freezed
abstract class BiographyModel with _$BiographyModel {
  const factory BiographyModel({
    required String fullName,
    required String publisher,
    required String alignment,
  }) = _BiographyModel;

  factory BiographyModel.fromJson(Map<String, dynamic> json) =>
      _$BiographyModelFromJson(json);
}

extension BiographyModelX on BiographyModel {
  BiographyEntity toEntity() {
    return BiographyEntity(
      fullName: fullName,
      publisher: publisher,
      alignment: alignment,
    );
  }
}