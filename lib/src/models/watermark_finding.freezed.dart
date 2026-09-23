// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'watermark_finding.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$WatermarkFinding {

 String get detectorId; String get detectorVersion; WatermarkDetection get detection;
/// Create a copy of WatermarkFinding
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WatermarkFindingCopyWith<WatermarkFinding> get copyWith => _$WatermarkFindingCopyWithImpl<WatermarkFinding>(this as WatermarkFinding, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as WatermarkFinding;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WatermarkFinding&&(identical(other.detectorId, _this.detectorId) || other.detectorId == _this.detectorId)&&(identical(other.detectorVersion, _this.detectorVersion) || other.detectorVersion == _this.detectorVersion)&&(identical(other.detection, _this.detection) || other.detection == _this.detection));
}


@override
int get hashCode {
  final _this = this as WatermarkFinding;
  return Object.hash(runtimeType,_this.detectorId,_this.detectorVersion,_this.detection);
}

@override
String toString() {
  final _this = this as WatermarkFinding;
  return 'WatermarkFinding(detectorId: ${_this.detectorId}, detectorVersion: ${_this.detectorVersion}, detection: ${_this.detection})';
}


}

/// @nodoc
abstract mixin class $WatermarkFindingCopyWith<$Res>  {
  factory $WatermarkFindingCopyWith(WatermarkFinding value, $Res Function(WatermarkFinding) _then) = _$WatermarkFindingCopyWithImpl;
@useResult
$Res call({
 String detectorId, String detectorVersion, WatermarkDetection detection
});


$WatermarkDetectionCopyWith<$Res> get detection;

}
/// @nodoc
class _$WatermarkFindingCopyWithImpl<$Res>
    implements $WatermarkFindingCopyWith<$Res> {
  _$WatermarkFindingCopyWithImpl(this._self, this._then);

  final WatermarkFinding _self;
  final $Res Function(WatermarkFinding) _then;

/// Create a copy of WatermarkFinding
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? detectorId = null,Object? detectorVersion = null,Object? detection = null,}) {
  return _then(WatermarkFinding(
detectorId: null == detectorId ? _self.detectorId : detectorId // ignore: cast_nullable_to_non_nullable
as String,detectorVersion: null == detectorVersion ? _self.detectorVersion : detectorVersion // ignore: cast_nullable_to_non_nullable
as String,detection: null == detection ? _self.detection : detection // ignore: cast_nullable_to_non_nullable
as WatermarkDetection,
  ));
}
/// Create a copy of WatermarkFinding
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WatermarkDetectionCopyWith<$Res> get detection {
  
  return $WatermarkDetectionCopyWith<$Res>(_self.detection, (value) {
    return _then(_self.copyWith(detection: value));
  });
}
}


/// Adds pattern-matching-related methods to [WatermarkFinding].
extension WatermarkFindingPatterns on WatermarkFinding {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WatermarkFinding value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WatermarkFinding() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WatermarkFinding value)  $default,){
final _that = this;
switch (_that) {
case _WatermarkFinding():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WatermarkFinding value)?  $default,){
final _that = this;
switch (_that) {
case _WatermarkFinding() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String detectorId,  String detectorVersion,  WatermarkDetection detection)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WatermarkFinding() when $default != null:
return $default(_that.detectorId,_that.detectorVersion,_that.detection);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String detectorId,  String detectorVersion,  WatermarkDetection detection)  $default,) {final _that = this;
switch (_that) {
case _WatermarkFinding():
return $default(_that.detectorId,_that.detectorVersion,_that.detection);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String detectorId,  String detectorVersion,  WatermarkDetection detection)?  $default,) {final _that = this;
switch (_that) {
case _WatermarkFinding() when $default != null:
return $default(_that.detectorId,_that.detectorVersion,_that.detection);case _:
  return null;

}
}

}

/// @nodoc


class _WatermarkFinding implements WatermarkFinding {
  const _WatermarkFinding({required this.detectorId, required this.detectorVersion, required this.detection});
  

@override final  String detectorId;
@override final  String detectorVersion;
@override final  WatermarkDetection detection;

/// Create a copy of WatermarkFinding
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WatermarkFindingCopyWith<_WatermarkFinding> get copyWith => __$WatermarkFindingCopyWithImpl<_WatermarkFinding>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _WatermarkFinding&&(identical(other.detectorId, detectorId) || other.detectorId == detectorId)&&(identical(other.detectorVersion, detectorVersion) || other.detectorVersion == detectorVersion)&&(identical(other.detection, detection) || other.detection == detection));
}


@override
int get hashCode {
    return Object.hash(runtimeType,detectorId,detectorVersion,detection);
}

@override
String toString() {
    return 'WatermarkFinding(detectorId: $detectorId, detectorVersion: $detectorVersion, detection: $detection)';
}


}

/// @nodoc
abstract mixin class _$WatermarkFindingCopyWith<$Res> implements $WatermarkFindingCopyWith<$Res> {
  factory _$WatermarkFindingCopyWith(_WatermarkFinding value, $Res Function(_WatermarkFinding) _then) = __$WatermarkFindingCopyWithImpl;
@override @useResult
$Res call({
 String detectorId, String detectorVersion, WatermarkDetection detection
});


@override $WatermarkDetectionCopyWith<$Res> get detection;

}
/// @nodoc
class __$WatermarkFindingCopyWithImpl<$Res>
    implements _$WatermarkFindingCopyWith<$Res> {
  __$WatermarkFindingCopyWithImpl(this._self, this._then);

  final _WatermarkFinding _self;
  final $Res Function(_WatermarkFinding) _then;

/// Create a copy of WatermarkFinding
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? detectorId = null,Object? detectorVersion = null,Object? detection = null,}) {
  return _then(_WatermarkFinding(
detectorId: null == detectorId ? _self.detectorId : detectorId // ignore: cast_nullable_to_non_nullable
as String,detectorVersion: null == detectorVersion ? _self.detectorVersion : detectorVersion // ignore: cast_nullable_to_non_nullable
as String,detection: null == detection ? _self.detection : detection // ignore: cast_nullable_to_non_nullable
as WatermarkDetection,
  ));
}

/// Create a copy of WatermarkFinding
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WatermarkDetectionCopyWith<$Res> get detection {
  
  return $WatermarkDetectionCopyWith<$Res>(_self.detection, (value) {
    return _then(_self.copyWith(detection: value));
  });
}
}

// dart format on
