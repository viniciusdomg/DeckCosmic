// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'powerstats_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PowerstatsEntity {

 int get intelligence; int get strength; int get speed; int get durability; int get power; int get combat;
/// Create a copy of PowerstatsEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PowerstatsEntityCopyWith<PowerstatsEntity> get copyWith => _$PowerstatsEntityCopyWithImpl<PowerstatsEntity>(this as PowerstatsEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PowerstatsEntity&&(identical(other.intelligence, intelligence) || other.intelligence == intelligence)&&(identical(other.strength, strength) || other.strength == strength)&&(identical(other.speed, speed) || other.speed == speed)&&(identical(other.durability, durability) || other.durability == durability)&&(identical(other.power, power) || other.power == power)&&(identical(other.combat, combat) || other.combat == combat));
}


@override
int get hashCode => Object.hash(runtimeType,intelligence,strength,speed,durability,power,combat);

@override
String toString() {
  return 'PowerstatsEntity(intelligence: $intelligence, strength: $strength, speed: $speed, durability: $durability, power: $power, combat: $combat)';
}


}

/// @nodoc
abstract mixin class $PowerstatsEntityCopyWith<$Res>  {
  factory $PowerstatsEntityCopyWith(PowerstatsEntity value, $Res Function(PowerstatsEntity) _then) = _$PowerstatsEntityCopyWithImpl;
@useResult
$Res call({
 int intelligence, int strength, int speed, int durability, int power, int combat
});




}
/// @nodoc
class _$PowerstatsEntityCopyWithImpl<$Res>
    implements $PowerstatsEntityCopyWith<$Res> {
  _$PowerstatsEntityCopyWithImpl(this._self, this._then);

  final PowerstatsEntity _self;
  final $Res Function(PowerstatsEntity) _then;

/// Create a copy of PowerstatsEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? intelligence = null,Object? strength = null,Object? speed = null,Object? durability = null,Object? power = null,Object? combat = null,}) {
  return _then(_self.copyWith(
intelligence: null == intelligence ? _self.intelligence : intelligence // ignore: cast_nullable_to_non_nullable
as int,strength: null == strength ? _self.strength : strength // ignore: cast_nullable_to_non_nullable
as int,speed: null == speed ? _self.speed : speed // ignore: cast_nullable_to_non_nullable
as int,durability: null == durability ? _self.durability : durability // ignore: cast_nullable_to_non_nullable
as int,power: null == power ? _self.power : power // ignore: cast_nullable_to_non_nullable
as int,combat: null == combat ? _self.combat : combat // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [PowerstatsEntity].
extension PowerstatsEntityPatterns on PowerstatsEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PowerstatsEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PowerstatsEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PowerstatsEntity value)  $default,){
final _that = this;
switch (_that) {
case _PowerstatsEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PowerstatsEntity value)?  $default,){
final _that = this;
switch (_that) {
case _PowerstatsEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int intelligence,  int strength,  int speed,  int durability,  int power,  int combat)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PowerstatsEntity() when $default != null:
return $default(_that.intelligence,_that.strength,_that.speed,_that.durability,_that.power,_that.combat);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int intelligence,  int strength,  int speed,  int durability,  int power,  int combat)  $default,) {final _that = this;
switch (_that) {
case _PowerstatsEntity():
return $default(_that.intelligence,_that.strength,_that.speed,_that.durability,_that.power,_that.combat);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int intelligence,  int strength,  int speed,  int durability,  int power,  int combat)?  $default,) {final _that = this;
switch (_that) {
case _PowerstatsEntity() when $default != null:
return $default(_that.intelligence,_that.strength,_that.speed,_that.durability,_that.power,_that.combat);case _:
  return null;

}
}

}

/// @nodoc


class _PowerstatsEntity implements PowerstatsEntity {
  const _PowerstatsEntity({required this.intelligence, required this.strength, required this.speed, required this.durability, required this.power, required this.combat});
  

@override final  int intelligence;
@override final  int strength;
@override final  int speed;
@override final  int durability;
@override final  int power;
@override final  int combat;

/// Create a copy of PowerstatsEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PowerstatsEntityCopyWith<_PowerstatsEntity> get copyWith => __$PowerstatsEntityCopyWithImpl<_PowerstatsEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PowerstatsEntity&&(identical(other.intelligence, intelligence) || other.intelligence == intelligence)&&(identical(other.strength, strength) || other.strength == strength)&&(identical(other.speed, speed) || other.speed == speed)&&(identical(other.durability, durability) || other.durability == durability)&&(identical(other.power, power) || other.power == power)&&(identical(other.combat, combat) || other.combat == combat));
}


@override
int get hashCode => Object.hash(runtimeType,intelligence,strength,speed,durability,power,combat);

@override
String toString() {
  return 'PowerstatsEntity(intelligence: $intelligence, strength: $strength, speed: $speed, durability: $durability, power: $power, combat: $combat)';
}


}

/// @nodoc
abstract mixin class _$PowerstatsEntityCopyWith<$Res> implements $PowerstatsEntityCopyWith<$Res> {
  factory _$PowerstatsEntityCopyWith(_PowerstatsEntity value, $Res Function(_PowerstatsEntity) _then) = __$PowerstatsEntityCopyWithImpl;
@override @useResult
$Res call({
 int intelligence, int strength, int speed, int durability, int power, int combat
});




}
/// @nodoc
class __$PowerstatsEntityCopyWithImpl<$Res>
    implements _$PowerstatsEntityCopyWith<$Res> {
  __$PowerstatsEntityCopyWithImpl(this._self, this._then);

  final _PowerstatsEntity _self;
  final $Res Function(_PowerstatsEntity) _then;

/// Create a copy of PowerstatsEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? intelligence = null,Object? strength = null,Object? speed = null,Object? durability = null,Object? power = null,Object? combat = null,}) {
  return _then(_PowerstatsEntity(
intelligence: null == intelligence ? _self.intelligence : intelligence // ignore: cast_nullable_to_non_nullable
as int,strength: null == strength ? _self.strength : strength // ignore: cast_nullable_to_non_nullable
as int,speed: null == speed ? _self.speed : speed // ignore: cast_nullable_to_non_nullable
as int,durability: null == durability ? _self.durability : durability // ignore: cast_nullable_to_non_nullable
as int,power: null == power ? _self.power : power // ignore: cast_nullable_to_non_nullable
as int,combat: null == combat ? _self.combat : combat // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
