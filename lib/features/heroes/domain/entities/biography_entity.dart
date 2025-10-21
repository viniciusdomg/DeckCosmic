import 'package:freezed_annotation/freezed_annotation.dart';

part 'biography_entity.freezed.dart';

@freezed
abstract class BiographyEntity with _$BiographyEntity {
  const factory BiographyEntity({
    required String fullName,
    required String publisher,
    required String alignment,
  }) = _BiographyEntity;
}