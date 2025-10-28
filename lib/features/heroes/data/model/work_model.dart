import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/work_entity.dart';

part 'work_model.freezed.dart';
part 'work_model.g.dart';

@freezed
abstract class WorkModel with _$WorkModel {
  const factory WorkModel({
    String? occupation,
    String? base
  }) = _WorkModel;
  factory WorkModel.fromJson(Map<String, dynamic> json) =>
      _$WorkModelFromJson(json);
}

extension WorkModelX on WorkModel {
  WorkEntity toEntity() {
    return WorkEntity(
      occupation: occupation ?? 'N/A',
      base: base ?? 'N/A',
    );

  }
}