import 'package:freezed_annotation/freezed_annotation.dart';

part 'work_entity.freezed.dart';

@freezed
abstract class WorkEntity with _$WorkEntity{
  const factory WorkEntity({
    required String occupation,
    required String base,
  }) = _WorkEntity;
}