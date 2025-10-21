// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'biography_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BiographyModel {

 String get fullName; String get publisher; String get alignment;
/// Create a copy of BiographyModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BiographyModelCopyWith<BiographyModel> get copyWith => _$BiographyModelCopyWithImpl<BiographyModel>(this as BiographyModel, _$identity);

  /// Serializes this BiographyModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BiographyModel&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.publisher, publisher) || other.publisher == publisher)&&(identical(other.alignment, alignment) || other.alignment == alignment));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fullName,publisher,alignment);

@override
String toString() {
  return 'BiographyModel(fullName: $fullName, publisher: $publisher, alignment: $alignment)';
}


}

/// @nodoc
abstract mixin class $BiographyModelCopyWith<$Res>  {
  factory $BiographyModelCopyWith(BiographyModel value, $Res Function(BiographyModel) _then) = _$BiographyModelCopyWithImpl;
@useResult
$Res call({
 String fullName, String publisher, String alignment
});




}
/// @nodoc
class _$BiographyModelCopyWithImpl<$Res>
    implements $BiographyModelCopyWith<$Res> {
  _$BiographyModelCopyWithImpl(this._self, this._then);

  final BiographyModel _self;
  final $Res Function(BiographyModel) _then;

/// Create a copy of BiographyModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? fullName = null,Object? publisher = null,Object? alignment = null,}) {
  return _then(_self.copyWith(
fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,publisher: null == publisher ? _self.publisher : publisher // ignore: cast_nullable_to_non_nullable
as String,alignment: null == alignment ? _self.alignment : alignment // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [BiographyModel].
extension BiographyModelPatterns on BiographyModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BiographyModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BiographyModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BiographyModel value)  $default,){
final _that = this;
switch (_that) {
case _BiographyModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BiographyModel value)?  $default,){
final _that = this;
switch (_that) {
case _BiographyModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String fullName,  String publisher,  String alignment)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BiographyModel() when $default != null:
return $default(_that.fullName,_that.publisher,_that.alignment);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String fullName,  String publisher,  String alignment)  $default,) {final _that = this;
switch (_that) {
case _BiographyModel():
return $default(_that.fullName,_that.publisher,_that.alignment);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String fullName,  String publisher,  String alignment)?  $default,) {final _that = this;
switch (_that) {
case _BiographyModel() when $default != null:
return $default(_that.fullName,_that.publisher,_that.alignment);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BiographyModel implements BiographyModel {
  const _BiographyModel({required this.fullName, required this.publisher, required this.alignment});
  factory _BiographyModel.fromJson(Map<String, dynamic> json) => _$BiographyModelFromJson(json);

@override final  String fullName;
@override final  String publisher;
@override final  String alignment;

/// Create a copy of BiographyModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BiographyModelCopyWith<_BiographyModel> get copyWith => __$BiographyModelCopyWithImpl<_BiographyModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BiographyModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BiographyModel&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.publisher, publisher) || other.publisher == publisher)&&(identical(other.alignment, alignment) || other.alignment == alignment));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fullName,publisher,alignment);

@override
String toString() {
  return 'BiographyModel(fullName: $fullName, publisher: $publisher, alignment: $alignment)';
}


}

/// @nodoc
abstract mixin class _$BiographyModelCopyWith<$Res> implements $BiographyModelCopyWith<$Res> {
  factory _$BiographyModelCopyWith(_BiographyModel value, $Res Function(_BiographyModel) _then) = __$BiographyModelCopyWithImpl;
@override @useResult
$Res call({
 String fullName, String publisher, String alignment
});




}
/// @nodoc
class __$BiographyModelCopyWithImpl<$Res>
    implements _$BiographyModelCopyWith<$Res> {
  __$BiographyModelCopyWithImpl(this._self, this._then);

  final _BiographyModel _self;
  final $Res Function(_BiographyModel) _then;

/// Create a copy of BiographyModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? fullName = null,Object? publisher = null,Object? alignment = null,}) {
  return _then(_BiographyModel(
fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,publisher: null == publisher ? _self.publisher : publisher // ignore: cast_nullable_to_non_nullable
as String,alignment: null == alignment ? _self.alignment : alignment // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
