// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'watermark_detection.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$WatermarkDetection {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is WatermarkDetection);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'WatermarkDetection()';
}


}

/// @nodoc
class $WatermarkDetectionCopyWith<$Res>  {
$WatermarkDetectionCopyWith(WatermarkDetection _, $Res Function(WatermarkDetection) __);
}


/// Adds pattern-matching-related methods to [WatermarkDetection].
extension WatermarkDetectionPatterns on WatermarkDetection {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( WatermarkDetected value)?  detected,TResult Function( WatermarkNotDetected value)?  notDetected,TResult Function( WatermarkInconclusive value)?  inconclusive,TResult Function( WatermarkUnsupported value)?  unsupported,required TResult orElse(),}){
final _that = this;
switch (_that) {
case WatermarkDetected() when detected != null:
return detected(_that);case WatermarkNotDetected() when notDetected != null:
return notDetected(_that);case WatermarkInconclusive() when inconclusive != null:
return inconclusive(_that);case WatermarkUnsupported() when unsupported != null:
return unsupported(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( WatermarkDetected value)  detected,required TResult Function( WatermarkNotDetected value)  notDetected,required TResult Function( WatermarkInconclusive value)  inconclusive,required TResult Function( WatermarkUnsupported value)  unsupported,}){
final _that = this;
switch (_that) {
case WatermarkDetected():
return detected(_that);case WatermarkNotDetected():
return notDetected(_that);case WatermarkInconclusive():
return inconclusive(_that);case WatermarkUnsupported():
return unsupported(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( WatermarkDetected value)?  detected,TResult? Function( WatermarkNotDetected value)?  notDetected,TResult? Function( WatermarkInconclusive value)?  inconclusive,TResult? Function( WatermarkUnsupported value)?  unsupported,}){
final _that = this;
switch (_that) {
case WatermarkDetected() when detected != null:
return detected(_that);case WatermarkNotDetected() when notDetected != null:
return notDetected(_that);case WatermarkInconclusive() when inconclusive != null:
return inconclusive(_that);case WatermarkUnsupported() when unsupported != null:
return unsupported(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String algorithm,  String? owner,  double? confidence,  String? region)?  detected,TResult Function()?  notDetected,TResult Function( String reason)?  inconclusive,TResult Function()?  unsupported,required TResult orElse(),}) {final _that = this;
switch (_that) {
case WatermarkDetected() when detected != null:
return detected(_that.algorithm,_that.owner,_that.confidence,_that.region);case WatermarkNotDetected() when notDetected != null:
return notDetected();case WatermarkInconclusive() when inconclusive != null:
return inconclusive(_that.reason);case WatermarkUnsupported() when unsupported != null:
return unsupported();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String algorithm,  String? owner,  double? confidence,  String? region)  detected,required TResult Function()  notDetected,required TResult Function( String reason)  inconclusive,required TResult Function()  unsupported,}) {final _that = this;
switch (_that) {
case WatermarkDetected():
return detected(_that.algorithm,_that.owner,_that.confidence,_that.region);case WatermarkNotDetected():
return notDetected();case WatermarkInconclusive():
return inconclusive(_that.reason);case WatermarkUnsupported():
return unsupported();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String algorithm,  String? owner,  double? confidence,  String? region)?  detected,TResult? Function()?  notDetected,TResult? Function( String reason)?  inconclusive,TResult? Function()?  unsupported,}) {final _that = this;
switch (_that) {
case WatermarkDetected() when detected != null:
return detected(_that.algorithm,_that.owner,_that.confidence,_that.region);case WatermarkNotDetected() when notDetected != null:
return notDetected();case WatermarkInconclusive() when inconclusive != null:
return inconclusive(_that.reason);case WatermarkUnsupported() when unsupported != null:
return unsupported();case _:
  return null;

}
}

}

/// @nodoc


class WatermarkDetected implements WatermarkDetection {
  const WatermarkDetected({required this.algorithm, this.owner, this.confidence, this.region});
  

 final  String algorithm;
 final  String? owner;
 final  double? confidence;
 final  String? region;

/// Create a copy of WatermarkDetection
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WatermarkDetectedCopyWith<WatermarkDetected> get copyWith => _$WatermarkDetectedCopyWithImpl<WatermarkDetected>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is WatermarkDetected&&(identical(other.algorithm, algorithm) || other.algorithm == algorithm)&&(identical(other.owner, owner) || other.owner == owner)&&(identical(other.confidence, confidence) || other.confidence == confidence)&&(identical(other.region, region) || other.region == region));
}


@override
int get hashCode {
    return Object.hash(runtimeType,algorithm,owner,confidence,region);
}

@override
String toString() {
    return 'WatermarkDetection.detected(algorithm: $algorithm, owner: $owner, confidence: $confidence, region: $region)';
}


}

/// @nodoc
abstract mixin class $WatermarkDetectedCopyWith<$Res> implements $WatermarkDetectionCopyWith<$Res> {
  factory $WatermarkDetectedCopyWith(WatermarkDetected value, $Res Function(WatermarkDetected) _then) = _$WatermarkDetectedCopyWithImpl;
@useResult
$Res call({
 String algorithm, String? owner, double? confidence, String? region
});




}
/// @nodoc
class _$WatermarkDetectedCopyWithImpl<$Res>
    implements $WatermarkDetectedCopyWith<$Res> {
  _$WatermarkDetectedCopyWithImpl(this._self, this._then);

  final WatermarkDetected _self;
  final $Res Function(WatermarkDetected) _then;

/// Create a copy of WatermarkDetection
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? algorithm = null,Object? owner = freezed,Object? confidence = freezed,Object? region = freezed,}) {
  return _then(WatermarkDetected(
algorithm: null == algorithm ? _self.algorithm : algorithm // ignore: cast_nullable_to_non_nullable
as String,owner: freezed == owner ? _self.owner : owner // ignore: cast_nullable_to_non_nullable
as String?,confidence: freezed == confidence ? _self.confidence : confidence // ignore: cast_nullable_to_non_nullable
as double?,region: freezed == region ? _self.region : region // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class WatermarkNotDetected implements WatermarkDetection {
  const WatermarkNotDetected();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is WatermarkNotDetected);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'WatermarkDetection.notDetected()';
}


}




/// @nodoc


class WatermarkInconclusive implements WatermarkDetection {
  const WatermarkInconclusive(this.reason);
  

 final  String reason;

/// Create a copy of WatermarkDetection
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WatermarkInconclusiveCopyWith<WatermarkInconclusive> get copyWith => _$WatermarkInconclusiveCopyWithImpl<WatermarkInconclusive>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is WatermarkInconclusive&&(identical(other.reason, reason) || other.reason == reason));
}


@override
int get hashCode {
    return Object.hash(runtimeType,reason);
}

@override
String toString() {
    return 'WatermarkDetection.inconclusive(reason: $reason)';
}


}

/// @nodoc
abstract mixin class $WatermarkInconclusiveCopyWith<$Res> implements $WatermarkDetectionCopyWith<$Res> {
  factory $WatermarkInconclusiveCopyWith(WatermarkInconclusive value, $Res Function(WatermarkInconclusive) _then) = _$WatermarkInconclusiveCopyWithImpl;
@useResult
$Res call({
 String reason
});




}
/// @nodoc
class _$WatermarkInconclusiveCopyWithImpl<$Res>
    implements $WatermarkInconclusiveCopyWith<$Res> {
  _$WatermarkInconclusiveCopyWithImpl(this._self, this._then);

  final WatermarkInconclusive _self;
  final $Res Function(WatermarkInconclusive) _then;

/// Create a copy of WatermarkDetection
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? reason = null,}) {
  return _then(WatermarkInconclusive(
null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class WatermarkUnsupported implements WatermarkDetection {
  const WatermarkUnsupported();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is WatermarkUnsupported);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'WatermarkDetection.unsupported()';
}


}




// dart format on
