// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appearance_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AppearanceModel {

 String? get gender; String? get race; List<String> get height; List<String> get weight; String? get eyeColor; String? get hairColor;
/// Create a copy of AppearanceModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppearanceModelCopyWith<AppearanceModel> get copyWith => _$AppearanceModelCopyWithImpl<AppearanceModel>(this as AppearanceModel, _$identity);

  /// Serializes this AppearanceModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppearanceModel&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.race, race) || other.race == race)&&const DeepCollectionEquality().equals(other.height, height)&&const DeepCollectionEquality().equals(other.weight, weight)&&(identical(other.eyeColor, eyeColor) || other.eyeColor == eyeColor)&&(identical(other.hairColor, hairColor) || other.hairColor == hairColor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,gender,race,const DeepCollectionEquality().hash(height),const DeepCollectionEquality().hash(weight),eyeColor,hairColor);

@override
String toString() {
  return 'AppearanceModel(gender: $gender, race: $race, height: $height, weight: $weight, eyeColor: $eyeColor, hairColor: $hairColor)';
}


}

/// @nodoc
abstract mixin class $AppearanceModelCopyWith<$Res>  {
  factory $AppearanceModelCopyWith(AppearanceModel value, $Res Function(AppearanceModel) _then) = _$AppearanceModelCopyWithImpl;
@useResult
$Res call({
 String? gender, String? race, List<String> height, List<String> weight, String? eyeColor, String? hairColor
});




}
/// @nodoc
class _$AppearanceModelCopyWithImpl<$Res>
    implements $AppearanceModelCopyWith<$Res> {
  _$AppearanceModelCopyWithImpl(this._self, this._then);

  final AppearanceModel _self;
  final $Res Function(AppearanceModel) _then;

/// Create a copy of AppearanceModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? gender = freezed,Object? race = freezed,Object? height = null,Object? weight = null,Object? eyeColor = freezed,Object? hairColor = freezed,}) {
  return _then(_self.copyWith(
gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,race: freezed == race ? _self.race : race // ignore: cast_nullable_to_non_nullable
as String?,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as List<String>,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as List<String>,eyeColor: freezed == eyeColor ? _self.eyeColor : eyeColor // ignore: cast_nullable_to_non_nullable
as String?,hairColor: freezed == hairColor ? _self.hairColor : hairColor // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AppearanceModel].
extension AppearanceModelPatterns on AppearanceModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppearanceModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppearanceModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppearanceModel value)  $default,){
final _that = this;
switch (_that) {
case _AppearanceModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppearanceModel value)?  $default,){
final _that = this;
switch (_that) {
case _AppearanceModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? gender,  String? race,  List<String> height,  List<String> weight,  String? eyeColor,  String? hairColor)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppearanceModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? gender,  String? race,  List<String> height,  List<String> weight,  String? eyeColor,  String? hairColor)  $default,) {final _that = this;
switch (_that) {
case _AppearanceModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? gender,  String? race,  List<String> height,  List<String> weight,  String? eyeColor,  String? hairColor)?  $default,) {final _that = this;
switch (_that) {
case _AppearanceModel() when $default != null:
return $default(_that.gender,_that.race,_that.height,_that.weight,_that.eyeColor,_that.hairColor);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AppearanceModel implements AppearanceModel {
  const _AppearanceModel({this.gender, this.race, required final  List<String> height, required final  List<String> weight, this.eyeColor, this.hairColor}): _height = height,_weight = weight;
  factory _AppearanceModel.fromJson(Map<String, dynamic> json) => _$AppearanceModelFromJson(json);

@override final  String? gender;
@override final  String? race;
 final  List<String> _height;
@override List<String> get height {
  if (_height is EqualUnmodifiableListView) return _height;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_height);
}

 final  List<String> _weight;
@override List<String> get weight {
  if (_weight is EqualUnmodifiableListView) return _weight;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_weight);
}

@override final  String? eyeColor;
@override final  String? hairColor;

/// Create a copy of AppearanceModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppearanceModelCopyWith<_AppearanceModel> get copyWith => __$AppearanceModelCopyWithImpl<_AppearanceModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AppearanceModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppearanceModel&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.race, race) || other.race == race)&&const DeepCollectionEquality().equals(other._height, _height)&&const DeepCollectionEquality().equals(other._weight, _weight)&&(identical(other.eyeColor, eyeColor) || other.eyeColor == eyeColor)&&(identical(other.hairColor, hairColor) || other.hairColor == hairColor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,gender,race,const DeepCollectionEquality().hash(_height),const DeepCollectionEquality().hash(_weight),eyeColor,hairColor);

@override
String toString() {
  return 'AppearanceModel(gender: $gender, race: $race, height: $height, weight: $weight, eyeColor: $eyeColor, hairColor: $hairColor)';
}


}

/// @nodoc
abstract mixin class _$AppearanceModelCopyWith<$Res> implements $AppearanceModelCopyWith<$Res> {
  factory _$AppearanceModelCopyWith(_AppearanceModel value, $Res Function(_AppearanceModel) _then) = __$AppearanceModelCopyWithImpl;
@override @useResult
$Res call({
 String? gender, String? race, List<String> height, List<String> weight, String? eyeColor, String? hairColor
});




}
/// @nodoc
class __$AppearanceModelCopyWithImpl<$Res>
    implements _$AppearanceModelCopyWith<$Res> {
  __$AppearanceModelCopyWithImpl(this._self, this._then);

  final _AppearanceModel _self;
  final $Res Function(_AppearanceModel) _then;

/// Create a copy of AppearanceModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? gender = freezed,Object? race = freezed,Object? height = null,Object? weight = null,Object? eyeColor = freezed,Object? hairColor = freezed,}) {
  return _then(_AppearanceModel(
gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,race: freezed == race ? _self.race : race // ignore: cast_nullable_to_non_nullable
as String?,height: null == height ? _self._height : height // ignore: cast_nullable_to_non_nullable
as List<String>,weight: null == weight ? _self._weight : weight // ignore: cast_nullable_to_non_nullable
as List<String>,eyeColor: freezed == eyeColor ? _self.eyeColor : eyeColor // ignore: cast_nullable_to_non_nullable
as String?,hairColor: freezed == hairColor ? _self.hairColor : hairColor // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
