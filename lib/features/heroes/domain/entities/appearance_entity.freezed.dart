// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appearance_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AppearanceEntity {

 String get gender; String get race; String get height; String get weight; String get eyeColor; String get hairColor;
/// Create a copy of AppearanceEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppearanceEntityCopyWith<AppearanceEntity> get copyWith => _$AppearanceEntityCopyWithImpl<AppearanceEntity>(this as AppearanceEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppearanceEntity&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.race, race) || other.race == race)&&(identical(other.height, height) || other.height == height)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.eyeColor, eyeColor) || other.eyeColor == eyeColor)&&(identical(other.hairColor, hairColor) || other.hairColor == hairColor));
}


@override
int get hashCode => Object.hash(runtimeType,gender,race,height,weight,eyeColor,hairColor);

@override
String toString() {
  return 'AppearanceEntity(gender: $gender, race: $race, height: $height, weight: $weight, eyeColor: $eyeColor, hairColor: $hairColor)';
}


}

/// @nodoc
abstract mixin class $AppearanceEntityCopyWith<$Res>  {
  factory $AppearanceEntityCopyWith(AppearanceEntity value, $Res Function(AppearanceEntity) _then) = _$AppearanceEntityCopyWithImpl;
@useResult
$Res call({
 String gender, String race, String height, String weight, String eyeColor, String hairColor
});




}
/// @nodoc
class _$AppearanceEntityCopyWithImpl<$Res>
    implements $AppearanceEntityCopyWith<$Res> {
  _$AppearanceEntityCopyWithImpl(this._self, this._then);

  final AppearanceEntity _self;
  final $Res Function(AppearanceEntity) _then;

/// Create a copy of AppearanceEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? gender = null,Object? race = null,Object? height = null,Object? weight = null,Object? eyeColor = null,Object? hairColor = null,}) {
  return _then(_self.copyWith(
gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,race: null == race ? _self.race : race // ignore: cast_nullable_to_non_nullable
as String,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as String,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as String,eyeColor: null == eyeColor ? _self.eyeColor : eyeColor // ignore: cast_nullable_to_non_nullable
as String,hairColor: null == hairColor ? _self.hairColor : hairColor // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AppearanceEntity].
extension AppearanceEntityPatterns on AppearanceEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppearanceEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppearanceEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppearanceEntity value)  $default,){
final _that = this;
switch (_that) {
case _AppearanceEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppearanceEntity value)?  $default,){
final _that = this;
switch (_that) {
case _AppearanceEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String gender,  String race,  String height,  String weight,  String eyeColor,  String hairColor)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppearanceEntity() when $default != null:
return $default(_that.gender,_that.race,_that.height,_that.weight,_that.eyeColor,_that.hairColor);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String gender,  String race,  String height,  String weight,  String eyeColor,  String hairColor)  $default,) {final _that = this;
switch (_that) {
case _AppearanceEntity():
return $default(_that.gender,_that.race,_that.height,_that.weight,_that.eyeColor,_that.hairColor);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String gender,  String race,  String height,  String weight,  String eyeColor,  String hairColor)?  $default,) {final _that = this;
switch (_that) {
case _AppearanceEntity() when $default != null:
return $default(_that.gender,_that.race,_that.height,_that.weight,_that.eyeColor,_that.hairColor);case _:
  return null;

}
}

}

/// @nodoc


class _AppearanceEntity implements AppearanceEntity {
  const _AppearanceEntity({required this.gender, required this.race, required this.height, required this.weight, required this.eyeColor, required this.hairColor});
  

@override final  String gender;
@override final  String race;
@override final  String height;
@override final  String weight;
@override final  String eyeColor;
@override final  String hairColor;

/// Create a copy of AppearanceEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppearanceEntityCopyWith<_AppearanceEntity> get copyWith => __$AppearanceEntityCopyWithImpl<_AppearanceEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppearanceEntity&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.race, race) || other.race == race)&&(identical(other.height, height) || other.height == height)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.eyeColor, eyeColor) || other.eyeColor == eyeColor)&&(identical(other.hairColor, hairColor) || other.hairColor == hairColor));
}


@override
int get hashCode => Object.hash(runtimeType,gender,race,height,weight,eyeColor,hairColor);

@override
String toString() {
  return 'AppearanceEntity(gender: $gender, race: $race, height: $height, weight: $weight, eyeColor: $eyeColor, hairColor: $hairColor)';
}


}

/// @nodoc
abstract mixin class _$AppearanceEntityCopyWith<$Res> implements $AppearanceEntityCopyWith<$Res> {
  factory _$AppearanceEntityCopyWith(_AppearanceEntity value, $Res Function(_AppearanceEntity) _then) = __$AppearanceEntityCopyWithImpl;
@override @useResult
$Res call({
 String gender, String race, String height, String weight, String eyeColor, String hairColor
});




}
/// @nodoc
class __$AppearanceEntityCopyWithImpl<$Res>
    implements _$AppearanceEntityCopyWith<$Res> {
  __$AppearanceEntityCopyWithImpl(this._self, this._then);

  final _AppearanceEntity _self;
  final $Res Function(_AppearanceEntity) _then;

/// Create a copy of AppearanceEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? gender = null,Object? race = null,Object? height = null,Object? weight = null,Object? eyeColor = null,Object? hairColor = null,}) {
  return _then(_AppearanceEntity(
gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,race: null == race ? _self.race : race // ignore: cast_nullable_to_non_nullable
as String,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as String,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as String,eyeColor: null == eyeColor ? _self.eyeColor : eyeColor // ignore: cast_nullable_to_non_nullable
as String,hairColor: null == hairColor ? _self.hairColor : hairColor // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
