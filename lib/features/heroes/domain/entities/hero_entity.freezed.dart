// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hero_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HeroEntity {

 String get id; String get name; PowerstatsEntity get powerstats; AppearanceEntity get appearance; BiographyEntity get biography; WorkEntity get work; ConnectionsEntity get connections; HeroImagesEntity get images;
/// Create a copy of HeroEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HeroEntityCopyWith<HeroEntity> get copyWith => _$HeroEntityCopyWithImpl<HeroEntity>(this as HeroEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HeroEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.powerstats, powerstats) || other.powerstats == powerstats)&&(identical(other.appearance, appearance) || other.appearance == appearance)&&(identical(other.biography, biography) || other.biography == biography)&&(identical(other.work, work) || other.work == work)&&(identical(other.connections, connections) || other.connections == connections)&&(identical(other.images, images) || other.images == images));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,powerstats,appearance,biography,work,connections,images);

@override
String toString() {
  return 'HeroEntity(id: $id, name: $name, powerstats: $powerstats, appearance: $appearance, biography: $biography, work: $work, connections: $connections, images: $images)';
}


}

/// @nodoc
abstract mixin class $HeroEntityCopyWith<$Res>  {
  factory $HeroEntityCopyWith(HeroEntity value, $Res Function(HeroEntity) _then) = _$HeroEntityCopyWithImpl;
@useResult
$Res call({
 String id, String name, PowerstatsEntity powerstats, AppearanceEntity appearance, BiographyEntity biography, WorkEntity work, ConnectionsEntity connections, HeroImagesEntity images
});


$PowerstatsEntityCopyWith<$Res> get powerstats;$AppearanceEntityCopyWith<$Res> get appearance;$BiographyEntityCopyWith<$Res> get biography;$WorkEntityCopyWith<$Res> get work;$ConnectionsEntityCopyWith<$Res> get connections;$HeroImagesEntityCopyWith<$Res> get images;

}
/// @nodoc
class _$HeroEntityCopyWithImpl<$Res>
    implements $HeroEntityCopyWith<$Res> {
  _$HeroEntityCopyWithImpl(this._self, this._then);

  final HeroEntity _self;
  final $Res Function(HeroEntity) _then;

/// Create a copy of HeroEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? powerstats = null,Object? appearance = null,Object? biography = null,Object? work = null,Object? connections = null,Object? images = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,powerstats: null == powerstats ? _self.powerstats : powerstats // ignore: cast_nullable_to_non_nullable
as PowerstatsEntity,appearance: null == appearance ? _self.appearance : appearance // ignore: cast_nullable_to_non_nullable
as AppearanceEntity,biography: null == biography ? _self.biography : biography // ignore: cast_nullable_to_non_nullable
as BiographyEntity,work: null == work ? _self.work : work // ignore: cast_nullable_to_non_nullable
as WorkEntity,connections: null == connections ? _self.connections : connections // ignore: cast_nullable_to_non_nullable
as ConnectionsEntity,images: null == images ? _self.images : images // ignore: cast_nullable_to_non_nullable
as HeroImagesEntity,
  ));
}
/// Create a copy of HeroEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PowerstatsEntityCopyWith<$Res> get powerstats {
  
  return $PowerstatsEntityCopyWith<$Res>(_self.powerstats, (value) {
    return _then(_self.copyWith(powerstats: value));
  });
}/// Create a copy of HeroEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppearanceEntityCopyWith<$Res> get appearance {
  
  return $AppearanceEntityCopyWith<$Res>(_self.appearance, (value) {
    return _then(_self.copyWith(appearance: value));
  });
}/// Create a copy of HeroEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BiographyEntityCopyWith<$Res> get biography {
  
  return $BiographyEntityCopyWith<$Res>(_self.biography, (value) {
    return _then(_self.copyWith(biography: value));
  });
}/// Create a copy of HeroEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WorkEntityCopyWith<$Res> get work {
  
  return $WorkEntityCopyWith<$Res>(_self.work, (value) {
    return _then(_self.copyWith(work: value));
  });
}/// Create a copy of HeroEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ConnectionsEntityCopyWith<$Res> get connections {
  
  return $ConnectionsEntityCopyWith<$Res>(_self.connections, (value) {
    return _then(_self.copyWith(connections: value));
  });
}/// Create a copy of HeroEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HeroImagesEntityCopyWith<$Res> get images {
  
  return $HeroImagesEntityCopyWith<$Res>(_self.images, (value) {
    return _then(_self.copyWith(images: value));
  });
}
}


/// Adds pattern-matching-related methods to [HeroEntity].
extension HeroEntityPatterns on HeroEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HeroEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HeroEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HeroEntity value)  $default,){
final _that = this;
switch (_that) {
case _HeroEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HeroEntity value)?  $default,){
final _that = this;
switch (_that) {
case _HeroEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  PowerstatsEntity powerstats,  AppearanceEntity appearance,  BiographyEntity biography,  WorkEntity work,  ConnectionsEntity connections,  HeroImagesEntity images)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HeroEntity() when $default != null:
return $default(_that.id,_that.name,_that.powerstats,_that.appearance,_that.biography,_that.work,_that.connections,_that.images);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  PowerstatsEntity powerstats,  AppearanceEntity appearance,  BiographyEntity biography,  WorkEntity work,  ConnectionsEntity connections,  HeroImagesEntity images)  $default,) {final _that = this;
switch (_that) {
case _HeroEntity():
return $default(_that.id,_that.name,_that.powerstats,_that.appearance,_that.biography,_that.work,_that.connections,_that.images);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  PowerstatsEntity powerstats,  AppearanceEntity appearance,  BiographyEntity biography,  WorkEntity work,  ConnectionsEntity connections,  HeroImagesEntity images)?  $default,) {final _that = this;
switch (_that) {
case _HeroEntity() when $default != null:
return $default(_that.id,_that.name,_that.powerstats,_that.appearance,_that.biography,_that.work,_that.connections,_that.images);case _:
  return null;

}
}

}

/// @nodoc


class _HeroEntity implements HeroEntity {
  const _HeroEntity({required this.id, required this.name, required this.powerstats, required this.appearance, required this.biography, required this.work, required this.connections, required this.images});
  

@override final  String id;
@override final  String name;
@override final  PowerstatsEntity powerstats;
@override final  AppearanceEntity appearance;
@override final  BiographyEntity biography;
@override final  WorkEntity work;
@override final  ConnectionsEntity connections;
@override final  HeroImagesEntity images;

/// Create a copy of HeroEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HeroEntityCopyWith<_HeroEntity> get copyWith => __$HeroEntityCopyWithImpl<_HeroEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HeroEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.powerstats, powerstats) || other.powerstats == powerstats)&&(identical(other.appearance, appearance) || other.appearance == appearance)&&(identical(other.biography, biography) || other.biography == biography)&&(identical(other.work, work) || other.work == work)&&(identical(other.connections, connections) || other.connections == connections)&&(identical(other.images, images) || other.images == images));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,powerstats,appearance,biography,work,connections,images);

@override
String toString() {
  return 'HeroEntity(id: $id, name: $name, powerstats: $powerstats, appearance: $appearance, biography: $biography, work: $work, connections: $connections, images: $images)';
}


}

/// @nodoc
abstract mixin class _$HeroEntityCopyWith<$Res> implements $HeroEntityCopyWith<$Res> {
  factory _$HeroEntityCopyWith(_HeroEntity value, $Res Function(_HeroEntity) _then) = __$HeroEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, PowerstatsEntity powerstats, AppearanceEntity appearance, BiographyEntity biography, WorkEntity work, ConnectionsEntity connections, HeroImagesEntity images
});


@override $PowerstatsEntityCopyWith<$Res> get powerstats;@override $AppearanceEntityCopyWith<$Res> get appearance;@override $BiographyEntityCopyWith<$Res> get biography;@override $WorkEntityCopyWith<$Res> get work;@override $ConnectionsEntityCopyWith<$Res> get connections;@override $HeroImagesEntityCopyWith<$Res> get images;

}
/// @nodoc
class __$HeroEntityCopyWithImpl<$Res>
    implements _$HeroEntityCopyWith<$Res> {
  __$HeroEntityCopyWithImpl(this._self, this._then);

  final _HeroEntity _self;
  final $Res Function(_HeroEntity) _then;

/// Create a copy of HeroEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? powerstats = null,Object? appearance = null,Object? biography = null,Object? work = null,Object? connections = null,Object? images = null,}) {
  return _then(_HeroEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,powerstats: null == powerstats ? _self.powerstats : powerstats // ignore: cast_nullable_to_non_nullable
as PowerstatsEntity,appearance: null == appearance ? _self.appearance : appearance // ignore: cast_nullable_to_non_nullable
as AppearanceEntity,biography: null == biography ? _self.biography : biography // ignore: cast_nullable_to_non_nullable
as BiographyEntity,work: null == work ? _self.work : work // ignore: cast_nullable_to_non_nullable
as WorkEntity,connections: null == connections ? _self.connections : connections // ignore: cast_nullable_to_non_nullable
as ConnectionsEntity,images: null == images ? _self.images : images // ignore: cast_nullable_to_non_nullable
as HeroImagesEntity,
  ));
}

/// Create a copy of HeroEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PowerstatsEntityCopyWith<$Res> get powerstats {
  
  return $PowerstatsEntityCopyWith<$Res>(_self.powerstats, (value) {
    return _then(_self.copyWith(powerstats: value));
  });
}/// Create a copy of HeroEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppearanceEntityCopyWith<$Res> get appearance {
  
  return $AppearanceEntityCopyWith<$Res>(_self.appearance, (value) {
    return _then(_self.copyWith(appearance: value));
  });
}/// Create a copy of HeroEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BiographyEntityCopyWith<$Res> get biography {
  
  return $BiographyEntityCopyWith<$Res>(_self.biography, (value) {
    return _then(_self.copyWith(biography: value));
  });
}/// Create a copy of HeroEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WorkEntityCopyWith<$Res> get work {
  
  return $WorkEntityCopyWith<$Res>(_self.work, (value) {
    return _then(_self.copyWith(work: value));
  });
}/// Create a copy of HeroEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ConnectionsEntityCopyWith<$Res> get connections {
  
  return $ConnectionsEntityCopyWith<$Res>(_self.connections, (value) {
    return _then(_self.copyWith(connections: value));
  });
}/// Create a copy of HeroEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HeroImagesEntityCopyWith<$Res> get images {
  
  return $HeroImagesEntityCopyWith<$Res>(_self.images, (value) {
    return _then(_self.copyWith(images: value));
  });
}
}

// dart format on
