// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hero_images_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HeroImagesEntity {

 String get xs; String get sm; String get md; String get lg;
/// Create a copy of HeroImagesEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HeroImagesEntityCopyWith<HeroImagesEntity> get copyWith => _$HeroImagesEntityCopyWithImpl<HeroImagesEntity>(this as HeroImagesEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HeroImagesEntity&&(identical(other.xs, xs) || other.xs == xs)&&(identical(other.sm, sm) || other.sm == sm)&&(identical(other.md, md) || other.md == md)&&(identical(other.lg, lg) || other.lg == lg));
}


@override
int get hashCode => Object.hash(runtimeType,xs,sm,md,lg);

@override
String toString() {
  return 'HeroImagesEntity(xs: $xs, sm: $sm, md: $md, lg: $lg)';
}


}

/// @nodoc
abstract mixin class $HeroImagesEntityCopyWith<$Res>  {
  factory $HeroImagesEntityCopyWith(HeroImagesEntity value, $Res Function(HeroImagesEntity) _then) = _$HeroImagesEntityCopyWithImpl;
@useResult
$Res call({
 String xs, String sm, String md, String lg
});




}
/// @nodoc
class _$HeroImagesEntityCopyWithImpl<$Res>
    implements $HeroImagesEntityCopyWith<$Res> {
  _$HeroImagesEntityCopyWithImpl(this._self, this._then);

  final HeroImagesEntity _self;
  final $Res Function(HeroImagesEntity) _then;

/// Create a copy of HeroImagesEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? xs = null,Object? sm = null,Object? md = null,Object? lg = null,}) {
  return _then(_self.copyWith(
xs: null == xs ? _self.xs : xs // ignore: cast_nullable_to_non_nullable
as String,sm: null == sm ? _self.sm : sm // ignore: cast_nullable_to_non_nullable
as String,md: null == md ? _self.md : md // ignore: cast_nullable_to_non_nullable
as String,lg: null == lg ? _self.lg : lg // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [HeroImagesEntity].
extension HeroImagesEntityPatterns on HeroImagesEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HeroImagesEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HeroImagesEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HeroImagesEntity value)  $default,){
final _that = this;
switch (_that) {
case _HeroImagesEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HeroImagesEntity value)?  $default,){
final _that = this;
switch (_that) {
case _HeroImagesEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String xs,  String sm,  String md,  String lg)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HeroImagesEntity() when $default != null:
return $default(_that.xs,_that.sm,_that.md,_that.lg);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String xs,  String sm,  String md,  String lg)  $default,) {final _that = this;
switch (_that) {
case _HeroImagesEntity():
return $default(_that.xs,_that.sm,_that.md,_that.lg);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String xs,  String sm,  String md,  String lg)?  $default,) {final _that = this;
switch (_that) {
case _HeroImagesEntity() when $default != null:
return $default(_that.xs,_that.sm,_that.md,_that.lg);case _:
  return null;

}
}

}

/// @nodoc


class _HeroImagesEntity implements HeroImagesEntity {
  const _HeroImagesEntity({required this.xs, required this.sm, required this.md, required this.lg});
  

@override final  String xs;
@override final  String sm;
@override final  String md;
@override final  String lg;

/// Create a copy of HeroImagesEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HeroImagesEntityCopyWith<_HeroImagesEntity> get copyWith => __$HeroImagesEntityCopyWithImpl<_HeroImagesEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HeroImagesEntity&&(identical(other.xs, xs) || other.xs == xs)&&(identical(other.sm, sm) || other.sm == sm)&&(identical(other.md, md) || other.md == md)&&(identical(other.lg, lg) || other.lg == lg));
}


@override
int get hashCode => Object.hash(runtimeType,xs,sm,md,lg);

@override
String toString() {
  return 'HeroImagesEntity(xs: $xs, sm: $sm, md: $md, lg: $lg)';
}


}

/// @nodoc
abstract mixin class _$HeroImagesEntityCopyWith<$Res> implements $HeroImagesEntityCopyWith<$Res> {
  factory _$HeroImagesEntityCopyWith(_HeroImagesEntity value, $Res Function(_HeroImagesEntity) _then) = __$HeroImagesEntityCopyWithImpl;
@override @useResult
$Res call({
 String xs, String sm, String md, String lg
});




}
/// @nodoc
class __$HeroImagesEntityCopyWithImpl<$Res>
    implements _$HeroImagesEntityCopyWith<$Res> {
  __$HeroImagesEntityCopyWithImpl(this._self, this._then);

  final _HeroImagesEntity _self;
  final $Res Function(_HeroImagesEntity) _then;

/// Create a copy of HeroImagesEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? xs = null,Object? sm = null,Object? md = null,Object? lg = null,}) {
  return _then(_HeroImagesEntity(
xs: null == xs ? _self.xs : xs // ignore: cast_nullable_to_non_nullable
as String,sm: null == sm ? _self.sm : sm // ignore: cast_nullable_to_non_nullable
as String,md: null == md ? _self.md : md // ignore: cast_nullable_to_non_nullable
as String,lg: null == lg ? _self.lg : lg // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
