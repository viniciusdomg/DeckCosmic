// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hero_images_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HeroImagesModel {

 String get xs; String get sm; String get md; String get lg;
/// Create a copy of HeroImagesModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HeroImagesModelCopyWith<HeroImagesModel> get copyWith => _$HeroImagesModelCopyWithImpl<HeroImagesModel>(this as HeroImagesModel, _$identity);

  /// Serializes this HeroImagesModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HeroImagesModel&&(identical(other.xs, xs) || other.xs == xs)&&(identical(other.sm, sm) || other.sm == sm)&&(identical(other.md, md) || other.md == md)&&(identical(other.lg, lg) || other.lg == lg));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,xs,sm,md,lg);

@override
String toString() {
  return 'HeroImagesModel(xs: $xs, sm: $sm, md: $md, lg: $lg)';
}


}

/// @nodoc
abstract mixin class $HeroImagesModelCopyWith<$Res>  {
  factory $HeroImagesModelCopyWith(HeroImagesModel value, $Res Function(HeroImagesModel) _then) = _$HeroImagesModelCopyWithImpl;
@useResult
$Res call({
 String xs, String sm, String md, String lg
});




}
/// @nodoc
class _$HeroImagesModelCopyWithImpl<$Res>
    implements $HeroImagesModelCopyWith<$Res> {
  _$HeroImagesModelCopyWithImpl(this._self, this._then);

  final HeroImagesModel _self;
  final $Res Function(HeroImagesModel) _then;

/// Create a copy of HeroImagesModel
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


/// Adds pattern-matching-related methods to [HeroImagesModel].
extension HeroImagesModelPatterns on HeroImagesModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HeroImagesModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HeroImagesModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HeroImagesModel value)  $default,){
final _that = this;
switch (_that) {
case _HeroImagesModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HeroImagesModel value)?  $default,){
final _that = this;
switch (_that) {
case _HeroImagesModel() when $default != null:
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
case _HeroImagesModel() when $default != null:
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
case _HeroImagesModel():
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
case _HeroImagesModel() when $default != null:
return $default(_that.xs,_that.sm,_that.md,_that.lg);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HeroImagesModel implements HeroImagesModel {
  const _HeroImagesModel({required this.xs, required this.sm, required this.md, required this.lg});
  factory _HeroImagesModel.fromJson(Map<String, dynamic> json) => _$HeroImagesModelFromJson(json);

@override final  String xs;
@override final  String sm;
@override final  String md;
@override final  String lg;

/// Create a copy of HeroImagesModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HeroImagesModelCopyWith<_HeroImagesModel> get copyWith => __$HeroImagesModelCopyWithImpl<_HeroImagesModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HeroImagesModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HeroImagesModel&&(identical(other.xs, xs) || other.xs == xs)&&(identical(other.sm, sm) || other.sm == sm)&&(identical(other.md, md) || other.md == md)&&(identical(other.lg, lg) || other.lg == lg));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,xs,sm,md,lg);

@override
String toString() {
  return 'HeroImagesModel(xs: $xs, sm: $sm, md: $md, lg: $lg)';
}


}

/// @nodoc
abstract mixin class _$HeroImagesModelCopyWith<$Res> implements $HeroImagesModelCopyWith<$Res> {
  factory _$HeroImagesModelCopyWith(_HeroImagesModel value, $Res Function(_HeroImagesModel) _then) = __$HeroImagesModelCopyWithImpl;
@override @useResult
$Res call({
 String xs, String sm, String md, String lg
});




}
/// @nodoc
class __$HeroImagesModelCopyWithImpl<$Res>
    implements _$HeroImagesModelCopyWith<$Res> {
  __$HeroImagesModelCopyWithImpl(this._self, this._then);

  final _HeroImagesModel _self;
  final $Res Function(_HeroImagesModel) _then;

/// Create a copy of HeroImagesModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? xs = null,Object? sm = null,Object? md = null,Object? lg = null,}) {
  return _then(_HeroImagesModel(
xs: null == xs ? _self.xs : xs // ignore: cast_nullable_to_non_nullable
as String,sm: null == sm ? _self.sm : sm // ignore: cast_nullable_to_non_nullable
as String,md: null == md ? _self.md : md // ignore: cast_nullable_to_non_nullable
as String,lg: null == lg ? _self.lg : lg // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
