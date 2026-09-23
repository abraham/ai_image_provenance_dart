// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inspection_warning.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$InspectionWarning {

 InspectionWarningCode get code; String get message;
/// Create a copy of InspectionWarning
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InspectionWarningCopyWith<InspectionWarning> get copyWith => _$InspectionWarningCopyWithImpl<InspectionWarning>(this as InspectionWarning, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as InspectionWarning;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InspectionWarning&&(identical(other.code, _this.code) || other.code == _this.code)&&(identical(other.message, _this.message) || other.message == _this.message));
}


@override
int get hashCode {
  final _this = this as InspectionWarning;
  return Object.hash(runtimeType,_this.code,_this.message);
}

@override
String toString() {
  final _this = this as InspectionWarning;
  return 'InspectionWarning(code: ${_this.code}, message: ${_this.message})';
}


}

/// @nodoc
abstract mixin class $InspectionWarningCopyWith<$Res>  {
  factory $InspectionWarningCopyWith(InspectionWarning value, $Res Function(InspectionWarning) _then) = _$InspectionWarningCopyWithImpl;
@useResult
$Res call({
 InspectionWarningCode code, String message
});




}
/// @nodoc
class _$InspectionWarningCopyWithImpl<$Res>
    implements $InspectionWarningCopyWith<$Res> {
  _$InspectionWarningCopyWithImpl(this._self, this._then);

  final InspectionWarning _self;
  final $Res Function(InspectionWarning) _then;

/// Create a copy of InspectionWarning
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = null,Object? message = null,}) {
  return _then(InspectionWarning(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as InspectionWarningCode,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [InspectionWarning].
extension InspectionWarningPatterns on InspectionWarning {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InspectionWarning value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InspectionWarning() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InspectionWarning value)  $default,){
final _that = this;
switch (_that) {
case _InspectionWarning():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InspectionWarning value)?  $default,){
final _that = this;
switch (_that) {
case _InspectionWarning() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( InspectionWarningCode code,  String message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InspectionWarning() when $default != null:
return $default(_that.code,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( InspectionWarningCode code,  String message)  $default,) {final _that = this;
switch (_that) {
case _InspectionWarning():
return $default(_that.code,_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( InspectionWarningCode code,  String message)?  $default,) {final _that = this;
switch (_that) {
case _InspectionWarning() when $default != null:
return $default(_that.code,_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _InspectionWarning implements InspectionWarning {
  const _InspectionWarning({required this.code, required this.message});
  

@override final  InspectionWarningCode code;
@override final  String message;

/// Create a copy of InspectionWarning
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InspectionWarningCopyWith<_InspectionWarning> get copyWith => __$InspectionWarningCopyWithImpl<_InspectionWarning>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _InspectionWarning&&(identical(other.code, code) || other.code == code)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode {
    return Object.hash(runtimeType,code,message);
}

@override
String toString() {
    return 'InspectionWarning(code: $code, message: $message)';
}


}

/// @nodoc
abstract mixin class _$InspectionWarningCopyWith<$Res> implements $InspectionWarningCopyWith<$Res> {
  factory _$InspectionWarningCopyWith(_InspectionWarning value, $Res Function(_InspectionWarning) _then) = __$InspectionWarningCopyWithImpl;
@override @useResult
$Res call({
 InspectionWarningCode code, String message
});




}
/// @nodoc
class __$InspectionWarningCopyWithImpl<$Res>
    implements _$InspectionWarningCopyWith<$Res> {
  __$InspectionWarningCopyWithImpl(this._self, this._then);

  final _InspectionWarning _self;
  final $Res Function(_InspectionWarning) _then;

/// Create a copy of InspectionWarning
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,Object? message = null,}) {
  return _then(_InspectionWarning(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as InspectionWarningCode,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
