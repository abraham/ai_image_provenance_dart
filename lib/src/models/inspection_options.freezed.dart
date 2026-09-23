// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inspection_options.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$InspectionOptions {

/// Maximum accepted input size, in bytes. Defaults to 50 MiB.
 int get maxBytes;/// Maximum time allowed for each watermark detector. Defaults to 10s.
 Duration get detectorTimeout;
/// Create a copy of InspectionOptions
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InspectionOptionsCopyWith<InspectionOptions> get copyWith => _$InspectionOptionsCopyWithImpl<InspectionOptions>(this as InspectionOptions, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as InspectionOptions;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InspectionOptions&&(identical(other.maxBytes, _this.maxBytes) || other.maxBytes == _this.maxBytes)&&(identical(other.detectorTimeout, _this.detectorTimeout) || other.detectorTimeout == _this.detectorTimeout));
}


@override
int get hashCode {
  final _this = this as InspectionOptions;
  return Object.hash(runtimeType,_this.maxBytes,_this.detectorTimeout);
}

@override
String toString() {
  final _this = this as InspectionOptions;
  return 'InspectionOptions(maxBytes: ${_this.maxBytes}, detectorTimeout: ${_this.detectorTimeout})';
}


}

/// @nodoc
abstract mixin class $InspectionOptionsCopyWith<$Res>  {
  factory $InspectionOptionsCopyWith(InspectionOptions value, $Res Function(InspectionOptions) _then) = _$InspectionOptionsCopyWithImpl;
@useResult
$Res call({
 int maxBytes, Duration detectorTimeout
});




}
/// @nodoc
class _$InspectionOptionsCopyWithImpl<$Res>
    implements $InspectionOptionsCopyWith<$Res> {
  _$InspectionOptionsCopyWithImpl(this._self, this._then);

  final InspectionOptions _self;
  final $Res Function(InspectionOptions) _then;

/// Create a copy of InspectionOptions
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? maxBytes = null,Object? detectorTimeout = null,}) {
  return _then(InspectionOptions(
maxBytes: null == maxBytes ? _self.maxBytes : maxBytes // ignore: cast_nullable_to_non_nullable
as int,detectorTimeout: null == detectorTimeout ? _self.detectorTimeout : detectorTimeout // ignore: cast_nullable_to_non_nullable
as Duration,
  ));
}

}


/// Adds pattern-matching-related methods to [InspectionOptions].
extension InspectionOptionsPatterns on InspectionOptions {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InspectionOptions value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InspectionOptions() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InspectionOptions value)  $default,){
final _that = this;
switch (_that) {
case _InspectionOptions():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InspectionOptions value)?  $default,){
final _that = this;
switch (_that) {
case _InspectionOptions() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int maxBytes,  Duration detectorTimeout)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InspectionOptions() when $default != null:
return $default(_that.maxBytes,_that.detectorTimeout);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int maxBytes,  Duration detectorTimeout)  $default,) {final _that = this;
switch (_that) {
case _InspectionOptions():
return $default(_that.maxBytes,_that.detectorTimeout);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int maxBytes,  Duration detectorTimeout)?  $default,) {final _that = this;
switch (_that) {
case _InspectionOptions() when $default != null:
return $default(_that.maxBytes,_that.detectorTimeout);case _:
  return null;

}
}

}

/// @nodoc


class _InspectionOptions implements InspectionOptions {
   _InspectionOptions({this.maxBytes = _defaultMaxBytes, this.detectorTimeout = _defaultDetectorTimeout}): assert(maxBytes > 0, 'maxBytes must be positive'),assert(detectorTimeout > Duration.zero, 'detectorTimeout must be positive');
  

/// Maximum accepted input size, in bytes. Defaults to 50 MiB.
@override@JsonKey() final  int maxBytes;
/// Maximum time allowed for each watermark detector. Defaults to 10s.
@override@JsonKey() final  Duration detectorTimeout;

/// Create a copy of InspectionOptions
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InspectionOptionsCopyWith<_InspectionOptions> get copyWith => __$InspectionOptionsCopyWithImpl<_InspectionOptions>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _InspectionOptions&&(identical(other.maxBytes, maxBytes) || other.maxBytes == maxBytes)&&(identical(other.detectorTimeout, detectorTimeout) || other.detectorTimeout == detectorTimeout));
}


@override
int get hashCode {
    return Object.hash(runtimeType,maxBytes,detectorTimeout);
}

@override
String toString() {
    return 'InspectionOptions(maxBytes: $maxBytes, detectorTimeout: $detectorTimeout)';
}


}

/// @nodoc
abstract mixin class _$InspectionOptionsCopyWith<$Res> implements $InspectionOptionsCopyWith<$Res> {
  factory _$InspectionOptionsCopyWith(_InspectionOptions value, $Res Function(_InspectionOptions) _then) = __$InspectionOptionsCopyWithImpl;
@override @useResult
$Res call({
 int maxBytes, Duration detectorTimeout
});




}
/// @nodoc
class __$InspectionOptionsCopyWithImpl<$Res>
    implements _$InspectionOptionsCopyWith<$Res> {
  __$InspectionOptionsCopyWithImpl(this._self, this._then);

  final _InspectionOptions _self;
  final $Res Function(_InspectionOptions) _then;

/// Create a copy of InspectionOptions
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? maxBytes = null,Object? detectorTimeout = null,}) {
  return _then(_InspectionOptions(
maxBytes: null == maxBytes ? _self.maxBytes : maxBytes // ignore: cast_nullable_to_non_nullable
as int,detectorTimeout: null == detectorTimeout ? _self.detectorTimeout : detectorTimeout // ignore: cast_nullable_to_non_nullable
as Duration,
  ));
}


}

// dart format on
