// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ai_use_assessment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AiUseAssessment {

 AiUseClassification get classification; EvidenceTrust get trust;
/// Create a copy of AiUseAssessment
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AiUseAssessmentCopyWith<AiUseAssessment> get copyWith => _$AiUseAssessmentCopyWithImpl<AiUseAssessment>(this as AiUseAssessment, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as AiUseAssessment;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AiUseAssessment&&(identical(other.classification, _this.classification) || other.classification == _this.classification)&&(identical(other.trust, _this.trust) || other.trust == _this.trust));
}


@override
int get hashCode {
  final _this = this as AiUseAssessment;
  return Object.hash(runtimeType,_this.classification,_this.trust);
}

@override
String toString() {
  final _this = this as AiUseAssessment;
  return 'AiUseAssessment(classification: ${_this.classification}, trust: ${_this.trust})';
}


}

/// @nodoc
abstract mixin class $AiUseAssessmentCopyWith<$Res>  {
  factory $AiUseAssessmentCopyWith(AiUseAssessment value, $Res Function(AiUseAssessment) _then) = _$AiUseAssessmentCopyWithImpl;
@useResult
$Res call({
 AiUseClassification classification, EvidenceTrust trust
});




}
/// @nodoc
class _$AiUseAssessmentCopyWithImpl<$Res>
    implements $AiUseAssessmentCopyWith<$Res> {
  _$AiUseAssessmentCopyWithImpl(this._self, this._then);

  final AiUseAssessment _self;
  final $Res Function(AiUseAssessment) _then;

/// Create a copy of AiUseAssessment
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? classification = null,Object? trust = null,}) {
  return _then(AiUseAssessment(
classification: null == classification ? _self.classification : classification // ignore: cast_nullable_to_non_nullable
as AiUseClassification,trust: null == trust ? _self.trust : trust // ignore: cast_nullable_to_non_nullable
as EvidenceTrust,
  ));
}

}


/// Adds pattern-matching-related methods to [AiUseAssessment].
extension AiUseAssessmentPatterns on AiUseAssessment {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AiUseAssessment value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AiUseAssessment() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AiUseAssessment value)  $default,){
final _that = this;
switch (_that) {
case _AiUseAssessment():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AiUseAssessment value)?  $default,){
final _that = this;
switch (_that) {
case _AiUseAssessment() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AiUseClassification classification,  EvidenceTrust trust)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AiUseAssessment() when $default != null:
return $default(_that.classification,_that.trust);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AiUseClassification classification,  EvidenceTrust trust)  $default,) {final _that = this;
switch (_that) {
case _AiUseAssessment():
return $default(_that.classification,_that.trust);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AiUseClassification classification,  EvidenceTrust trust)?  $default,) {final _that = this;
switch (_that) {
case _AiUseAssessment() when $default != null:
return $default(_that.classification,_that.trust);case _:
  return null;

}
}

}

/// @nodoc


class _AiUseAssessment implements AiUseAssessment {
  const _AiUseAssessment({required this.classification, required this.trust});
  

@override final  AiUseClassification classification;
@override final  EvidenceTrust trust;

/// Create a copy of AiUseAssessment
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AiUseAssessmentCopyWith<_AiUseAssessment> get copyWith => __$AiUseAssessmentCopyWithImpl<_AiUseAssessment>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AiUseAssessment&&(identical(other.classification, classification) || other.classification == classification)&&(identical(other.trust, trust) || other.trust == trust));
}


@override
int get hashCode {
    return Object.hash(runtimeType,classification,trust);
}

@override
String toString() {
    return 'AiUseAssessment(classification: $classification, trust: $trust)';
}


}

/// @nodoc
abstract mixin class _$AiUseAssessmentCopyWith<$Res> implements $AiUseAssessmentCopyWith<$Res> {
  factory _$AiUseAssessmentCopyWith(_AiUseAssessment value, $Res Function(_AiUseAssessment) _then) = __$AiUseAssessmentCopyWithImpl;
@override @useResult
$Res call({
 AiUseClassification classification, EvidenceTrust trust
});




}
/// @nodoc
class __$AiUseAssessmentCopyWithImpl<$Res>
    implements _$AiUseAssessmentCopyWith<$Res> {
  __$AiUseAssessmentCopyWithImpl(this._self, this._then);

  final _AiUseAssessment _self;
  final $Res Function(_AiUseAssessment) _then;

/// Create a copy of AiUseAssessment
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? classification = null,Object? trust = null,}) {
  return _then(_AiUseAssessment(
classification: null == classification ? _self.classification : classification // ignore: cast_nullable_to_non_nullable
as AiUseClassification,trust: null == trust ? _self.trust : trust // ignore: cast_nullable_to_non_nullable
as EvidenceTrust,
  ));
}


}

// dart format on
