// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'work_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$WorkEntity {

 String get occupation; String get base;
/// Create a copy of WorkEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WorkEntityCopyWith<WorkEntity> get copyWith => _$WorkEntityCopyWithImpl<WorkEntity>(this as WorkEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WorkEntity&&(identical(other.occupation, occupation) || other.occupation == occupation)&&(identical(other.base, base) || other.base == base));
}


@override
int get hashCode => Object.hash(runtimeType,occupation,base);

@override
String toString() {
  return 'WorkEntity(occupation: $occupation, base: $base)';
}


}

/// @nodoc
abstract mixin class $WorkEntityCopyWith<$Res>  {
  factory $WorkEntityCopyWith(WorkEntity value, $Res Function(WorkEntity) _then) = _$WorkEntityCopyWithImpl;
@useResult
$Res call({
 String occupation, String base
});




}
/// @nodoc
class _$WorkEntityCopyWithImpl<$Res>
    implements $WorkEntityCopyWith<$Res> {
  _$WorkEntityCopyWithImpl(this._self, this._then);

  final WorkEntity _self;
  final $Res Function(WorkEntity) _then;

/// Create a copy of WorkEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? occupation = null,Object? base = null,}) {
  return _then(_self.copyWith(
occupation: null == occupation ? _self.occupation : occupation // ignore: cast_nullable_to_non_nullable
as String,base: null == base ? _self.base : base // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [WorkEntity].
extension WorkEntityPatterns on WorkEntity {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WorkEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WorkEntity() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WorkEntity value)  $default,){
final _that = this;
switch (_that) {
case _WorkEntity():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WorkEntity value)?  $default,){
final _that = this;
switch (_that) {
case _WorkEntity() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String occupation,  String base)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WorkEntity() when $default != null:
return $default(_that.occupation,_that.base);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String occupation,  String base)  $default,) {final _that = this;
switch (_that) {
case _WorkEntity():
return $default(_that.occupation,_that.base);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String occupation,  String base)?  $default,) {final _that = this;
switch (_that) {
case _WorkEntity() when $default != null:
return $default(_that.occupation,_that.base);case _:
  return null;

}
}

}

/// @nodoc


class _WorkEntity implements WorkEntity {
  const _WorkEntity({required this.occupation, required this.base});
  

@override final  String occupation;
@override final  String base;

/// Create a copy of WorkEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WorkEntityCopyWith<_WorkEntity> get copyWith => __$WorkEntityCopyWithImpl<_WorkEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WorkEntity&&(identical(other.occupation, occupation) || other.occupation == occupation)&&(identical(other.base, base) || other.base == base));
}


@override
int get hashCode => Object.hash(runtimeType,occupation,base);

@override
String toString() {
  return 'WorkEntity(occupation: $occupation, base: $base)';
}


}

/// @nodoc
abstract mixin class _$WorkEntityCopyWith<$Res> implements $WorkEntityCopyWith<$Res> {
  factory _$WorkEntityCopyWith(_WorkEntity value, $Res Function(_WorkEntity) _then) = __$WorkEntityCopyWithImpl;
@override @useResult
$Res call({
 String occupation, String base
});




}
/// @nodoc
class __$WorkEntityCopyWithImpl<$Res>
    implements _$WorkEntityCopyWith<$Res> {
  __$WorkEntityCopyWithImpl(this._self, this._then);

  final _WorkEntity _self;
  final $Res Function(_WorkEntity) _then;

/// Create a copy of WorkEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? occupation = null,Object? base = null,}) {
  return _then(_WorkEntity(
occupation: null == occupation ? _self.occupation : occupation // ignore: cast_nullable_to_non_nullable
as String,base: null == base ? _self.base : base // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
