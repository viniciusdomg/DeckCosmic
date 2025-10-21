// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'biography_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BiographyEntity {

 String get fullName; String get publisher; String get alignment;
/// Create a copy of BiographyEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BiographyEntityCopyWith<BiographyEntity> get copyWith => _$BiographyEntityCopyWithImpl<BiographyEntity>(this as BiographyEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BiographyEntity&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.publisher, publisher) || other.publisher == publisher)&&(identical(other.alignment, alignment) || other.alignment == alignment));
}


@override
int get hashCode => Object.hash(runtimeType,fullName,publisher,alignment);

@override
String toString() {
  return 'BiographyEntity(fullName: $fullName, publisher: $publisher, alignment: $alignment)';
}


}

/// @nodoc
abstract mixin class $BiographyEntityCopyWith<$Res>  {
  factory $BiographyEntityCopyWith(BiographyEntity value, $Res Function(BiographyEntity) _then) = _$BiographyEntityCopyWithImpl;
@useResult
$Res call({
 String fullName, String publisher, String alignment
});




}
/// @nodoc
class _$BiographyEntityCopyWithImpl<$Res>
    implements $BiographyEntityCopyWith<$Res> {
  _$BiographyEntityCopyWithImpl(this._self, this._then);

  final BiographyEntity _self;
  final $Res Function(BiographyEntity) _then;

/// Create a copy of BiographyEntity
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


/// Adds pattern-matching-related methods to [BiographyEntity].
extension BiographyEntityPatterns on BiographyEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BiographyEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BiographyEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BiographyEntity value)  $default,){
final _that = this;
switch (_that) {
case _BiographyEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BiographyEntity value)?  $default,){
final _that = this;
switch (_that) {
case _BiographyEntity() when $default != null:
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
case _BiographyEntity() when $default != null:
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
case _BiographyEntity():
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
case _BiographyEntity() when $default != null:
return $default(_that.fullName,_that.publisher,_that.alignment);case _:
  return null;

}
}

}

/// @nodoc


class _BiographyEntity implements BiographyEntity {
  const _BiographyEntity({required this.fullName, required this.publisher, required this.alignment});
  

@override final  String fullName;
@override final  String publisher;
@override final  String alignment;

/// Create a copy of BiographyEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BiographyEntityCopyWith<_BiographyEntity> get copyWith => __$BiographyEntityCopyWithImpl<_BiographyEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BiographyEntity&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.publisher, publisher) || other.publisher == publisher)&&(identical(other.alignment, alignment) || other.alignment == alignment));
}


@override
int get hashCode => Object.hash(runtimeType,fullName,publisher,alignment);

@override
String toString() {
  return 'BiographyEntity(fullName: $fullName, publisher: $publisher, alignment: $alignment)';
}


}

/// @nodoc
abstract mixin class _$BiographyEntityCopyWith<$Res> implements $BiographyEntityCopyWith<$Res> {
  factory _$BiographyEntityCopyWith(_BiographyEntity value, $Res Function(_BiographyEntity) _then) = __$BiographyEntityCopyWithImpl;
@override @useResult
$Res call({
 String fullName, String publisher, String alignment
});




}
/// @nodoc
class __$BiographyEntityCopyWithImpl<$Res>
    implements _$BiographyEntityCopyWith<$Res> {
  __$BiographyEntityCopyWithImpl(this._self, this._then);

  final _BiographyEntity _self;
  final $Res Function(_BiographyEntity) _then;

/// Create a copy of BiographyEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? fullName = null,Object? publisher = null,Object? alignment = null,}) {
  return _then(_BiographyEntity(
fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,publisher: null == publisher ? _self.publisher : publisher // ignore: cast_nullable_to_non_nullable
as String,alignment: null == alignment ? _self.alignment : alignment // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
