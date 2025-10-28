// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'connections_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ConnectionsModel {

 String? get groupAffiliation; String? get relatives;
/// Create a copy of ConnectionsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConnectionsModelCopyWith<ConnectionsModel> get copyWith => _$ConnectionsModelCopyWithImpl<ConnectionsModel>(this as ConnectionsModel, _$identity);

  /// Serializes this ConnectionsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConnectionsModel&&(identical(other.groupAffiliation, groupAffiliation) || other.groupAffiliation == groupAffiliation)&&(identical(other.relatives, relatives) || other.relatives == relatives));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,groupAffiliation,relatives);

@override
String toString() {
  return 'ConnectionsModel(groupAffiliation: $groupAffiliation, relatives: $relatives)';
}


}

/// @nodoc
abstract mixin class $ConnectionsModelCopyWith<$Res>  {
  factory $ConnectionsModelCopyWith(ConnectionsModel value, $Res Function(ConnectionsModel) _then) = _$ConnectionsModelCopyWithImpl;
@useResult
$Res call({
 String? groupAffiliation, String? relatives
});




}
/// @nodoc
class _$ConnectionsModelCopyWithImpl<$Res>
    implements $ConnectionsModelCopyWith<$Res> {
  _$ConnectionsModelCopyWithImpl(this._self, this._then);

  final ConnectionsModel _self;
  final $Res Function(ConnectionsModel) _then;

/// Create a copy of ConnectionsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? groupAffiliation = freezed,Object? relatives = freezed,}) {
  return _then(_self.copyWith(
groupAffiliation: freezed == groupAffiliation ? _self.groupAffiliation : groupAffiliation // ignore: cast_nullable_to_non_nullable
as String?,relatives: freezed == relatives ? _self.relatives : relatives // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ConnectionsModel].
extension ConnectionsModelPatterns on ConnectionsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ConnectionsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ConnectionsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ConnectionsModel value)  $default,){
final _that = this;
switch (_that) {
case _ConnectionsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ConnectionsModel value)?  $default,){
final _that = this;
switch (_that) {
case _ConnectionsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? groupAffiliation,  String? relatives)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ConnectionsModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? groupAffiliation,  String? relatives)  $default,) {final _that = this;
switch (_that) {
case _ConnectionsModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? groupAffiliation,  String? relatives)?  $default,) {final _that = this;
switch (_that) {
case _ConnectionsModel() when $default != null:
return $default(_that.groupAffiliation,_that.relatives);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ConnectionsModel implements ConnectionsModel {
  const _ConnectionsModel({this.groupAffiliation, this.relatives});
  factory _ConnectionsModel.fromJson(Map<String, dynamic> json) => _$ConnectionsModelFromJson(json);

@override final  String? groupAffiliation;
@override final  String? relatives;

/// Create a copy of ConnectionsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ConnectionsModelCopyWith<_ConnectionsModel> get copyWith => __$ConnectionsModelCopyWithImpl<_ConnectionsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ConnectionsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ConnectionsModel&&(identical(other.groupAffiliation, groupAffiliation) || other.groupAffiliation == groupAffiliation)&&(identical(other.relatives, relatives) || other.relatives == relatives));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,groupAffiliation,relatives);

@override
String toString() {
  return 'ConnectionsModel(groupAffiliation: $groupAffiliation, relatives: $relatives)';
}


}

/// @nodoc
abstract mixin class _$ConnectionsModelCopyWith<$Res> implements $ConnectionsModelCopyWith<$Res> {
  factory _$ConnectionsModelCopyWith(_ConnectionsModel value, $Res Function(_ConnectionsModel) _then) = __$ConnectionsModelCopyWithImpl;
@override @useResult
$Res call({
 String? groupAffiliation, String? relatives
});




}
/// @nodoc
class __$ConnectionsModelCopyWithImpl<$Res>
    implements _$ConnectionsModelCopyWith<$Res> {
  __$ConnectionsModelCopyWithImpl(this._self, this._then);

  final _ConnectionsModel _self;
  final $Res Function(_ConnectionsModel) _then;

/// Create a copy of ConnectionsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? groupAffiliation = freezed,Object? relatives = freezed,}) {
  return _then(_ConnectionsModel(
groupAffiliation: freezed == groupAffiliation ? _self.groupAffiliation : groupAffiliation // ignore: cast_nullable_to_non_nullable
as String?,relatives: freezed == relatives ? _self.relatives : relatives // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
