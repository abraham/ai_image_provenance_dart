// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'provenance_metadata.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProvenanceMetadata {

 MetadataSource get source; String get fieldName; Object? get value; EvidenceTrust get trust;
/// Create a copy of ProvenanceMetadata
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProvenanceMetadataCopyWith<ProvenanceMetadata> get copyWith => _$ProvenanceMetadataCopyWithImpl<ProvenanceMetadata>(this as ProvenanceMetadata, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as ProvenanceMetadata;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProvenanceMetadata&&(identical(other.source, _this.source) || other.source == _this.source)&&(identical(other.fieldName, _this.fieldName) || other.fieldName == _this.fieldName)&&const DeepCollectionEquality().equals(other.value, _this.value)&&(identical(other.trust, _this.trust) || other.trust == _this.trust));
}


@override
int get hashCode {
  final _this = this as ProvenanceMetadata;
  return Object.hash(runtimeType,_this.source,_this.fieldName,const DeepCollectionEquality().hash(_this.value),_this.trust);
}

@override
String toString() {
  final _this = this as ProvenanceMetadata;
  return 'ProvenanceMetadata(source: ${_this.source}, fieldName: ${_this.fieldName}, value: ${_this.value}, trust: ${_this.trust})';
}


}

/// @nodoc
abstract mixin class $ProvenanceMetadataCopyWith<$Res>  {
  factory $ProvenanceMetadataCopyWith(ProvenanceMetadata value, $Res Function(ProvenanceMetadata) _then) = _$ProvenanceMetadataCopyWithImpl;
@useResult
$Res call({
 MetadataSource source, String fieldName, Object? value, EvidenceTrust trust
});




}
/// @nodoc
class _$ProvenanceMetadataCopyWithImpl<$Res>
    implements $ProvenanceMetadataCopyWith<$Res> {
  _$ProvenanceMetadataCopyWithImpl(this._self, this._then);

  final ProvenanceMetadata _self;
  final $Res Function(ProvenanceMetadata) _then;

/// Create a copy of ProvenanceMetadata
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? source = null,Object? fieldName = null,Object? value = freezed,Object? trust = null,}) {
  return _then(ProvenanceMetadata(
source: null == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as MetadataSource,fieldName: null == fieldName ? _self.fieldName : fieldName // ignore: cast_nullable_to_non_nullable
as String,value: freezed == value ? _self.value : value ,trust: null == trust ? _self.trust : trust // ignore: cast_nullable_to_non_nullable
as EvidenceTrust,
  ));
}

}


/// Adds pattern-matching-related methods to [ProvenanceMetadata].
extension ProvenanceMetadataPatterns on ProvenanceMetadata {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProvenanceMetadata value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProvenanceMetadata() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProvenanceMetadata value)  $default,){
final _that = this;
switch (_that) {
case _ProvenanceMetadata():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProvenanceMetadata value)?  $default,){
final _that = this;
switch (_that) {
case _ProvenanceMetadata() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( MetadataSource source,  String fieldName,  Object? value,  EvidenceTrust trust)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProvenanceMetadata() when $default != null:
return $default(_that.source,_that.fieldName,_that.value,_that.trust);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( MetadataSource source,  String fieldName,  Object? value,  EvidenceTrust trust)  $default,) {final _that = this;
switch (_that) {
case _ProvenanceMetadata():
return $default(_that.source,_that.fieldName,_that.value,_that.trust);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( MetadataSource source,  String fieldName,  Object? value,  EvidenceTrust trust)?  $default,) {final _that = this;
switch (_that) {
case _ProvenanceMetadata() when $default != null:
return $default(_that.source,_that.fieldName,_that.value,_that.trust);case _:
  return null;

}
}

}

/// @nodoc


class _ProvenanceMetadata implements ProvenanceMetadata {
  const _ProvenanceMetadata({required this.source, required this.fieldName, required this.value, required this.trust});
  

@override final  MetadataSource source;
@override final  String fieldName;
@override final  Object? value;
@override final  EvidenceTrust trust;

/// Create a copy of ProvenanceMetadata
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProvenanceMetadataCopyWith<_ProvenanceMetadata> get copyWith => __$ProvenanceMetadataCopyWithImpl<_ProvenanceMetadata>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProvenanceMetadata&&(identical(other.source, source) || other.source == source)&&(identical(other.fieldName, fieldName) || other.fieldName == fieldName)&&const DeepCollectionEquality().equals(other.value, value)&&(identical(other.trust, trust) || other.trust == trust));
}


@override
int get hashCode {
    return Object.hash(runtimeType,source,fieldName,const DeepCollectionEquality().hash(value),trust);
}

@override
String toString() {
    return 'ProvenanceMetadata(source: $source, fieldName: $fieldName, value: $value, trust: $trust)';
}


}

/// @nodoc
abstract mixin class _$ProvenanceMetadataCopyWith<$Res> implements $ProvenanceMetadataCopyWith<$Res> {
  factory _$ProvenanceMetadataCopyWith(_ProvenanceMetadata value, $Res Function(_ProvenanceMetadata) _then) = __$ProvenanceMetadataCopyWithImpl;
@override @useResult
$Res call({
 MetadataSource source, String fieldName, Object? value, EvidenceTrust trust
});




}
/// @nodoc
class __$ProvenanceMetadataCopyWithImpl<$Res>
    implements _$ProvenanceMetadataCopyWith<$Res> {
  __$ProvenanceMetadataCopyWithImpl(this._self, this._then);

  final _ProvenanceMetadata _self;
  final $Res Function(_ProvenanceMetadata) _then;

/// Create a copy of ProvenanceMetadata
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? source = null,Object? fieldName = null,Object? value = freezed,Object? trust = null,}) {
  return _then(_ProvenanceMetadata(
source: null == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as MetadataSource,fieldName: null == fieldName ? _self.fieldName : fieldName // ignore: cast_nullable_to_non_nullable
as String,value: freezed == value ? _self.value : value ,trust: null == trust ? _self.trust : trust // ignore: cast_nullable_to_non_nullable
as EvidenceTrust,
  ));
}


}

// dart format on
