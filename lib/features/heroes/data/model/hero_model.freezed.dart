// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hero_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HeroModel {

 String get id; String get name; PowerstatsModel get powerstats; AppearanceModel get appearance; BiographyModel get biography; WorkModel get work; ConnectionsModel get connections; HeroImagesModel get images;
/// Create a copy of HeroModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HeroModelCopyWith<HeroModel> get copyWith => _$HeroModelCopyWithImpl<HeroModel>(this as HeroModel, _$identity);

  /// Serializes this HeroModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HeroModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.powerstats, powerstats) || other.powerstats == powerstats)&&(identical(other.appearance, appearance) || other.appearance == appearance)&&(identical(other.biography, biography) || other.biography == biography)&&(identical(other.work, work) || other.work == work)&&(identical(other.connections, connections) || other.connections == connections)&&(identical(other.images, images) || other.images == images));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,powerstats,appearance,biography,work,connections,images);

@override
String toString() {
  return 'HeroModel(id: $id, name: $name, powerstats: $powerstats, appearance: $appearance, biography: $biography, work: $work, connections: $connections, images: $images)';
}


}

/// @nodoc
abstract mixin class $HeroModelCopyWith<$Res>  {
  factory $HeroModelCopyWith(HeroModel value, $Res Function(HeroModel) _then) = _$HeroModelCopyWithImpl;
@useResult
$Res call({
 String id, String name, PowerstatsModel powerstats, AppearanceModel appearance, BiographyModel biography, WorkModel work, ConnectionsModel connections, HeroImagesModel images
});


$PowerstatsModelCopyWith<$Res> get powerstats;$AppearanceModelCopyWith<$Res> get appearance;$BiographyModelCopyWith<$Res> get biography;$WorkModelCopyWith<$Res> get work;$ConnectionsModelCopyWith<$Res> get connections;$HeroImagesModelCopyWith<$Res> get images;

}
/// @nodoc
class _$HeroModelCopyWithImpl<$Res>
    implements $HeroModelCopyWith<$Res> {
  _$HeroModelCopyWithImpl(this._self, this._then);

  final HeroModel _self;
  final $Res Function(HeroModel) _then;

/// Create a copy of HeroModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? powerstats = null,Object? appearance = null,Object? biography = null,Object? work = null,Object? connections = null,Object? images = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,powerstats: null == powerstats ? _self.powerstats : powerstats // ignore: cast_nullable_to_non_nullable
as PowerstatsModel,appearance: null == appearance ? _self.appearance : appearance // ignore: cast_nullable_to_non_nullable
as AppearanceModel,biography: null == biography ? _self.biography : biography // ignore: cast_nullable_to_non_nullable
as BiographyModel,work: null == work ? _self.work : work // ignore: cast_nullable_to_non_nullable
as WorkModel,connections: null == connections ? _self.connections : connections // ignore: cast_nullable_to_non_nullable
as ConnectionsModel,images: null == images ? _self.images : images // ignore: cast_nullable_to_non_nullable
as HeroImagesModel,
  ));
}
/// Create a copy of HeroModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PowerstatsModelCopyWith<$Res> get powerstats {
  
  return $PowerstatsModelCopyWith<$Res>(_self.powerstats, (value) {
    return _then(_self.copyWith(powerstats: value));
  });
}/// Create a copy of HeroModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppearanceModelCopyWith<$Res> get appearance {
  
  return $AppearanceModelCopyWith<$Res>(_self.appearance, (value) {
    return _then(_self.copyWith(appearance: value));
  });
}/// Create a copy of HeroModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BiographyModelCopyWith<$Res> get biography {
  
  return $BiographyModelCopyWith<$Res>(_self.biography, (value) {
    return _then(_self.copyWith(biography: value));
  });
}/// Create a copy of HeroModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WorkModelCopyWith<$Res> get work {
  
  return $WorkModelCopyWith<$Res>(_self.work, (value) {
    return _then(_self.copyWith(work: value));
  });
}/// Create a copy of HeroModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ConnectionsModelCopyWith<$Res> get connections {
  
  return $ConnectionsModelCopyWith<$Res>(_self.connections, (value) {
    return _then(_self.copyWith(connections: value));
  });
}/// Create a copy of HeroModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HeroImagesModelCopyWith<$Res> get images {
  
  return $HeroImagesModelCopyWith<$Res>(_self.images, (value) {
    return _then(_self.copyWith(images: value));
  });
}
}


/// Adds pattern-matching-related methods to [HeroModel].
extension HeroModelPatterns on HeroModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HeroModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HeroModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HeroModel value)  $default,){
final _that = this;
switch (_that) {
case _HeroModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HeroModel value)?  $default,){
final _that = this;
switch (_that) {
case _HeroModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  PowerstatsModel powerstats,  AppearanceModel appearance,  BiographyModel biography,  WorkModel work,  ConnectionsModel connections,  HeroImagesModel images)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HeroModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  PowerstatsModel powerstats,  AppearanceModel appearance,  BiographyModel biography,  WorkModel work,  ConnectionsModel connections,  HeroImagesModel images)  $default,) {final _that = this;
switch (_that) {
case _HeroModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  PowerstatsModel powerstats,  AppearanceModel appearance,  BiographyModel biography,  WorkModel work,  ConnectionsModel connections,  HeroImagesModel images)?  $default,) {final _that = this;
switch (_that) {
case _HeroModel() when $default != null:
return $default(_that.id,_that.name,_that.powerstats,_that.appearance,_that.biography,_that.work,_that.connections,_that.images);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HeroModel implements HeroModel {
  const _HeroModel({required this.id, required this.name, required this.powerstats, required this.appearance, required this.biography, required this.work, required this.connections, required this.images});
  factory _HeroModel.fromJson(Map<String, dynamic> json) => _$HeroModelFromJson(json);

@override final  String id;
@override final  String name;
@override final  PowerstatsModel powerstats;
@override final  AppearanceModel appearance;
@override final  BiographyModel biography;
@override final  WorkModel work;
@override final  ConnectionsModel connections;
@override final  HeroImagesModel images;

/// Create a copy of HeroModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HeroModelCopyWith<_HeroModel> get copyWith => __$HeroModelCopyWithImpl<_HeroModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HeroModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HeroModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.powerstats, powerstats) || other.powerstats == powerstats)&&(identical(other.appearance, appearance) || other.appearance == appearance)&&(identical(other.biography, biography) || other.biography == biography)&&(identical(other.work, work) || other.work == work)&&(identical(other.connections, connections) || other.connections == connections)&&(identical(other.images, images) || other.images == images));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,powerstats,appearance,biography,work,connections,images);

@override
String toString() {
  return 'HeroModel(id: $id, name: $name, powerstats: $powerstats, appearance: $appearance, biography: $biography, work: $work, connections: $connections, images: $images)';
}


}

/// @nodoc
abstract mixin class _$HeroModelCopyWith<$Res> implements $HeroModelCopyWith<$Res> {
  factory _$HeroModelCopyWith(_HeroModel value, $Res Function(_HeroModel) _then) = __$HeroModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, PowerstatsModel powerstats, AppearanceModel appearance, BiographyModel biography, WorkModel work, ConnectionsModel connections, HeroImagesModel images
});


@override $PowerstatsModelCopyWith<$Res> get powerstats;@override $AppearanceModelCopyWith<$Res> get appearance;@override $BiographyModelCopyWith<$Res> get biography;@override $WorkModelCopyWith<$Res> get work;@override $ConnectionsModelCopyWith<$Res> get connections;@override $HeroImagesModelCopyWith<$Res> get images;

}
/// @nodoc
class __$HeroModelCopyWithImpl<$Res>
    implements _$HeroModelCopyWith<$Res> {
  __$HeroModelCopyWithImpl(this._self, this._then);

  final _HeroModel _self;
  final $Res Function(_HeroModel) _then;

/// Create a copy of HeroModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? powerstats = null,Object? appearance = null,Object? biography = null,Object? work = null,Object? connections = null,Object? images = null,}) {
  return _then(_HeroModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,powerstats: null == powerstats ? _self.powerstats : powerstats // ignore: cast_nullable_to_non_nullable
as PowerstatsModel,appearance: null == appearance ? _self.appearance : appearance // ignore: cast_nullable_to_non_nullable
as AppearanceModel,biography: null == biography ? _self.biography : biography // ignore: cast_nullable_to_non_nullable
as BiographyModel,work: null == work ? _self.work : work // ignore: cast_nullable_to_non_nullable
as WorkModel,connections: null == connections ? _self.connections : connections // ignore: cast_nullable_to_non_nullable
as ConnectionsModel,images: null == images ? _self.images : images // ignore: cast_nullable_to_non_nullable
as HeroImagesModel,
  ));
}

/// Create a copy of HeroModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PowerstatsModelCopyWith<$Res> get powerstats {
  
  return $PowerstatsModelCopyWith<$Res>(_self.powerstats, (value) {
    return _then(_self.copyWith(powerstats: value));
  });
}/// Create a copy of HeroModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppearanceModelCopyWith<$Res> get appearance {
  
  return $AppearanceModelCopyWith<$Res>(_self.appearance, (value) {
    return _then(_self.copyWith(appearance: value));
  });
}/// Create a copy of HeroModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BiographyModelCopyWith<$Res> get biography {
  
  return $BiographyModelCopyWith<$Res>(_self.biography, (value) {
    return _then(_self.copyWith(biography: value));
  });
}/// Create a copy of HeroModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WorkModelCopyWith<$Res> get work {
  
  return $WorkModelCopyWith<$Res>(_self.work, (value) {
    return _then(_self.copyWith(work: value));
  });
}/// Create a copy of HeroModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ConnectionsModelCopyWith<$Res> get connections {
  
  return $ConnectionsModelCopyWith<$Res>(_self.connections, (value) {
    return _then(_self.copyWith(connections: value));
  });
}/// Create a copy of HeroModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HeroImagesModelCopyWith<$Res> get images {
  
  return $HeroImagesModelCopyWith<$Res>(_self.images, (value) {
    return _then(_self.copyWith(images: value));
  });
}
}

// dart format on
