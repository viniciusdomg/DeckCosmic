// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'connections_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ConnectionsEntity {

 String get groupAffiliation; String get relatives;
/// Create a copy of ConnectionsEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConnectionsEntityCopyWith<ConnectionsEntity> get copyWith => _$ConnectionsEntityCopyWithImpl<ConnectionsEntity>(this as ConnectionsEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConnectionsEntity&&(identical(other.groupAffiliation, groupAffiliation) || other.groupAffiliation == groupAffiliation)&&(identical(other.relatives, relatives) || other.relatives == relatives));
}


@override
int get hashCode => Object.hash(runtimeType,groupAffiliation,relatives);

@override
String toString() {
  return 'ConnectionsEntity(groupAffiliation: $groupAffiliation, relatives: $relatives)';
}


}

/// @nodoc
abstract mixin class $ConnectionsEntityCopyWith<$Res>  {
  factory $ConnectionsEntityCopyWith(ConnectionsEntity value, $Res Function(ConnectionsEntity) _then) = _$ConnectionsEntityCopyWithImpl;
@useResult
$Res call({
 String groupAffiliation, String relatives
});




}
/// @nodoc
class _$ConnectionsEntityCopyWithImpl<$Res>
    implements $ConnectionsEntityCopyWith<$Res> {
  _$ConnectionsEntityCopyWithImpl(this._self, this._then);

  final ConnectionsEntity _self;
  final $Res Function(ConnectionsEntity) _then;

/// Create a copy of ConnectionsEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? groupAffiliation = null,Object? relatives = null,}) {
  return _then(_self.copyWith(
groupAffiliation: null == groupAffiliation ? _self.groupAffiliation : groupAffiliation // ignore: cast_nullable_to_non_nullable
as String,relatives: null == relatives ? _self.relatives : relatives // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ConnectionsEntity].
extension ConnectionsEntityPatterns on ConnectionsEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ConnectionsEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ConnectionsEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ConnectionsEntity value)  $default,){
final _that = this;
switch (_that) {
case _ConnectionsEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ConnectionsEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ConnectionsEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String groupAffiliation,  String relatives)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ConnectionsEntity() when $default != null:
return $default(_that.groupAffiliation,_that.relatives);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String groupAffiliation,  String relatives)  $default,) {final _that = this;
switch (_that) {
case _ConnectionsEntity():
return $default(_that.groupAffiliation,_that.relatives);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String groupAffiliation,  String relatives)?  $default,) {final _that = this;
switch (_that) {
case _ConnectionsEntity() when $default != null:
return $default(_that.groupAffiliation,_that.relatives);case _:
  return null;

}
}

}

/// @nodoc


class _ConnectionsEntity implements ConnectionsEntity {
  const _ConnectionsEntity({required this.groupAffiliation, required this.relatives});
  

@override final  String groupAffiliation;
@override final  String relatives;

/// Create a copy of ConnectionsEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ConnectionsEntityCopyWith<_ConnectionsEntity> get copyWith => __$ConnectionsEntityCopyWithImpl<_ConnectionsEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ConnectionsEntity&&(identical(other.groupAffiliation, groupAffiliation) || other.groupAffiliation == groupAffiliation)&&(identical(other.relatives, relatives) || other.relatives == relatives));
}


@override
int get hashCode => Object.hash(runtimeType,groupAffiliation,relatives);

@override
String toString() {
  return 'ConnectionsEntity(groupAffiliation: $groupAffiliation, relatives: $relatives)';
}


}

/// @nodoc
abstract mixin class _$ConnectionsEntityCopyWith<$Res> implements $ConnectionsEntityCopyWith<$Res> {
  factory _$ConnectionsEntityCopyWith(_ConnectionsEntity value, $Res Function(_ConnectionsEntity) _then) = __$ConnectionsEntityCopyWithImpl;
@override @useResult
$Res call({
 String groupAffiliation, String relatives
});




}
/// @nodoc
class __$ConnectionsEntityCopyWithImpl<$Res>
    implements _$ConnectionsEntityCopyWith<$Res> {
  __$ConnectionsEntityCopyWithImpl(this._self, this._then);

  final _ConnectionsEntity _self;
  final $Res Function(_ConnectionsEntity) _then;

/// Create a copy of ConnectionsEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? groupAffiliation = null,Object? relatives = null,}) {
  return _then(_ConnectionsEntity(
groupAffiliation: null == groupAffiliation ? _self.groupAffiliation : groupAffiliation // ignore: cast_nullable_to_non_nullable
as String,relatives: null == relatives ? _self.relatives : relatives // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
