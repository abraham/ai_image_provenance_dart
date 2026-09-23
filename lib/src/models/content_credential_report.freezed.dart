// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'content_credential_report.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ContentCredentialReport {

 ContentCredentialStatus get status; String? get manifestLabel; String? get claimGeneratorName; String? get claimGeneratorVersion; String? get signerIssuer; String? get signerCommonName; DateTime? get validFrom; DateTime? get validUntil; DigitalSourceType? get digitalSourceType;
/// Create a copy of ContentCredentialReport
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ContentCredentialReportCopyWith<ContentCredentialReport> get copyWith => _$ContentCredentialReportCopyWithImpl<ContentCredentialReport>(this as ContentCredentialReport, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as ContentCredentialReport;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ContentCredentialReport&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.manifestLabel, _this.manifestLabel) || other.manifestLabel == _this.manifestLabel)&&(identical(other.claimGeneratorName, _this.claimGeneratorName) || other.claimGeneratorName == _this.claimGeneratorName)&&(identical(other.claimGeneratorVersion, _this.claimGeneratorVersion) || other.claimGeneratorVersion == _this.claimGeneratorVersion)&&(identical(other.signerIssuer, _this.signerIssuer) || other.signerIssuer == _this.signerIssuer)&&(identical(other.signerCommonName, _this.signerCommonName) || other.signerCommonName == _this.signerCommonName)&&(identical(other.validFrom, _this.validFrom) || other.validFrom == _this.validFrom)&&(identical(other.validUntil, _this.validUntil) || other.validUntil == _this.validUntil)&&(identical(other.digitalSourceType, _this.digitalSourceType) || other.digitalSourceType == _this.digitalSourceType));
}


@override
int get hashCode {
  final _this = this as ContentCredentialReport;
  return Object.hash(runtimeType,_this.status,_this.manifestLabel,_this.claimGeneratorName,_this.claimGeneratorVersion,_this.signerIssuer,_this.signerCommonName,_this.validFrom,_this.validUntil,_this.digitalSourceType);
}

@override
String toString() {
  final _this = this as ContentCredentialReport;
  return 'ContentCredentialReport(status: ${_this.status}, manifestLabel: ${_this.manifestLabel}, claimGeneratorName: ${_this.claimGeneratorName}, claimGeneratorVersion: ${_this.claimGeneratorVersion}, signerIssuer: ${_this.signerIssuer}, signerCommonName: ${_this.signerCommonName}, validFrom: ${_this.validFrom}, validUntil: ${_this.validUntil}, digitalSourceType: ${_this.digitalSourceType})';
}


}

/// @nodoc
abstract mixin class $ContentCredentialReportCopyWith<$Res>  {
  factory $ContentCredentialReportCopyWith(ContentCredentialReport value, $Res Function(ContentCredentialReport) _then) = _$ContentCredentialReportCopyWithImpl;
@useResult
$Res call({
 ContentCredentialStatus status, String? manifestLabel, String? claimGeneratorName, String? claimGeneratorVersion, String? signerIssuer, String? signerCommonName, DateTime? validFrom, DateTime? validUntil, DigitalSourceType? digitalSourceType
});




}
/// @nodoc
class _$ContentCredentialReportCopyWithImpl<$Res>
    implements $ContentCredentialReportCopyWith<$Res> {
  _$ContentCredentialReportCopyWithImpl(this._self, this._then);

  final ContentCredentialReport _self;
  final $Res Function(ContentCredentialReport) _then;

/// Create a copy of ContentCredentialReport
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? manifestLabel = freezed,Object? claimGeneratorName = freezed,Object? claimGeneratorVersion = freezed,Object? signerIssuer = freezed,Object? signerCommonName = freezed,Object? validFrom = freezed,Object? validUntil = freezed,Object? digitalSourceType = freezed,}) {
  return _then(ContentCredentialReport(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ContentCredentialStatus,manifestLabel: freezed == manifestLabel ? _self.manifestLabel : manifestLabel // ignore: cast_nullable_to_non_nullable
as String?,claimGeneratorName: freezed == claimGeneratorName ? _self.claimGeneratorName : claimGeneratorName // ignore: cast_nullable_to_non_nullable
as String?,claimGeneratorVersion: freezed == claimGeneratorVersion ? _self.claimGeneratorVersion : claimGeneratorVersion // ignore: cast_nullable_to_non_nullable
as String?,signerIssuer: freezed == signerIssuer ? _self.signerIssuer : signerIssuer // ignore: cast_nullable_to_non_nullable
as String?,signerCommonName: freezed == signerCommonName ? _self.signerCommonName : signerCommonName // ignore: cast_nullable_to_non_nullable
as String?,validFrom: freezed == validFrom ? _self.validFrom : validFrom // ignore: cast_nullable_to_non_nullable
as DateTime?,validUntil: freezed == validUntil ? _self.validUntil : validUntil // ignore: cast_nullable_to_non_nullable
as DateTime?,digitalSourceType: freezed == digitalSourceType ? _self.digitalSourceType : digitalSourceType // ignore: cast_nullable_to_non_nullable
as DigitalSourceType?,
  ));
}

}


/// Adds pattern-matching-related methods to [ContentCredentialReport].
extension ContentCredentialReportPatterns on ContentCredentialReport {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ContentCredentialReport value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ContentCredentialReport() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ContentCredentialReport value)  $default,){
final _that = this;
switch (_that) {
case _ContentCredentialReport():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ContentCredentialReport value)?  $default,){
final _that = this;
switch (_that) {
case _ContentCredentialReport() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ContentCredentialStatus status,  String? manifestLabel,  String? claimGeneratorName,  String? claimGeneratorVersion,  String? signerIssuer,  String? signerCommonName,  DateTime? validFrom,  DateTime? validUntil,  DigitalSourceType? digitalSourceType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ContentCredentialReport() when $default != null:
return $default(_that.status,_that.manifestLabel,_that.claimGeneratorName,_that.claimGeneratorVersion,_that.signerIssuer,_that.signerCommonName,_that.validFrom,_that.validUntil,_that.digitalSourceType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ContentCredentialStatus status,  String? manifestLabel,  String? claimGeneratorName,  String? claimGeneratorVersion,  String? signerIssuer,  String? signerCommonName,  DateTime? validFrom,  DateTime? validUntil,  DigitalSourceType? digitalSourceType)  $default,) {final _that = this;
switch (_that) {
case _ContentCredentialReport():
return $default(_that.status,_that.manifestLabel,_that.claimGeneratorName,_that.claimGeneratorVersion,_that.signerIssuer,_that.signerCommonName,_that.validFrom,_that.validUntil,_that.digitalSourceType);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ContentCredentialStatus status,  String? manifestLabel,  String? claimGeneratorName,  String? claimGeneratorVersion,  String? signerIssuer,  String? signerCommonName,  DateTime? validFrom,  DateTime? validUntil,  DigitalSourceType? digitalSourceType)?  $default,) {final _that = this;
switch (_that) {
case _ContentCredentialReport() when $default != null:
return $default(_that.status,_that.manifestLabel,_that.claimGeneratorName,_that.claimGeneratorVersion,_that.signerIssuer,_that.signerCommonName,_that.validFrom,_that.validUntil,_that.digitalSourceType);case _:
  return null;

}
}

}

/// @nodoc


class _ContentCredentialReport implements ContentCredentialReport {
  const _ContentCredentialReport({required this.status, this.manifestLabel, this.claimGeneratorName, this.claimGeneratorVersion, this.signerIssuer, this.signerCommonName, this.validFrom, this.validUntil, this.digitalSourceType});
  

@override final  ContentCredentialStatus status;
@override final  String? manifestLabel;
@override final  String? claimGeneratorName;
@override final  String? claimGeneratorVersion;
@override final  String? signerIssuer;
@override final  String? signerCommonName;
@override final  DateTime? validFrom;
@override final  DateTime? validUntil;
@override final  DigitalSourceType? digitalSourceType;

/// Create a copy of ContentCredentialReport
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ContentCredentialReportCopyWith<_ContentCredentialReport> get copyWith => __$ContentCredentialReportCopyWithImpl<_ContentCredentialReport>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ContentCredentialReport&&(identical(other.status, status) || other.status == status)&&(identical(other.manifestLabel, manifestLabel) || other.manifestLabel == manifestLabel)&&(identical(other.claimGeneratorName, claimGeneratorName) || other.claimGeneratorName == claimGeneratorName)&&(identical(other.claimGeneratorVersion, claimGeneratorVersion) || other.claimGeneratorVersion == claimGeneratorVersion)&&(identical(other.signerIssuer, signerIssuer) || other.signerIssuer == signerIssuer)&&(identical(other.signerCommonName, signerCommonName) || other.signerCommonName == signerCommonName)&&(identical(other.validFrom, validFrom) || other.validFrom == validFrom)&&(identical(other.validUntil, validUntil) || other.validUntil == validUntil)&&(identical(other.digitalSourceType, digitalSourceType) || other.digitalSourceType == digitalSourceType));
}


@override
int get hashCode {
    return Object.hash(runtimeType,status,manifestLabel,claimGeneratorName,claimGeneratorVersion,signerIssuer,signerCommonName,validFrom,validUntil,digitalSourceType);
}

@override
String toString() {
    return 'ContentCredentialReport(status: $status, manifestLabel: $manifestLabel, claimGeneratorName: $claimGeneratorName, claimGeneratorVersion: $claimGeneratorVersion, signerIssuer: $signerIssuer, signerCommonName: $signerCommonName, validFrom: $validFrom, validUntil: $validUntil, digitalSourceType: $digitalSourceType)';
}


}

/// @nodoc
abstract mixin class _$ContentCredentialReportCopyWith<$Res> implements $ContentCredentialReportCopyWith<$Res> {
  factory _$ContentCredentialReportCopyWith(_ContentCredentialReport value, $Res Function(_ContentCredentialReport) _then) = __$ContentCredentialReportCopyWithImpl;
@override @useResult
$Res call({
 ContentCredentialStatus status, String? manifestLabel, String? claimGeneratorName, String? claimGeneratorVersion, String? signerIssuer, String? signerCommonName, DateTime? validFrom, DateTime? validUntil, DigitalSourceType? digitalSourceType
});




}
/// @nodoc
class __$ContentCredentialReportCopyWithImpl<$Res>
    implements _$ContentCredentialReportCopyWith<$Res> {
  __$ContentCredentialReportCopyWithImpl(this._self, this._then);

  final _ContentCredentialReport _self;
  final $Res Function(_ContentCredentialReport) _then;

/// Create a copy of ContentCredentialReport
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? manifestLabel = freezed,Object? claimGeneratorName = freezed,Object? claimGeneratorVersion = freezed,Object? signerIssuer = freezed,Object? signerCommonName = freezed,Object? validFrom = freezed,Object? validUntil = freezed,Object? digitalSourceType = freezed,}) {
  return _then(_ContentCredentialReport(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ContentCredentialStatus,manifestLabel: freezed == manifestLabel ? _self.manifestLabel : manifestLabel // ignore: cast_nullable_to_non_nullable
as String?,claimGeneratorName: freezed == claimGeneratorName ? _self.claimGeneratorName : claimGeneratorName // ignore: cast_nullable_to_non_nullable
as String?,claimGeneratorVersion: freezed == claimGeneratorVersion ? _self.claimGeneratorVersion : claimGeneratorVersion // ignore: cast_nullable_to_non_nullable
as String?,signerIssuer: freezed == signerIssuer ? _self.signerIssuer : signerIssuer // ignore: cast_nullable_to_non_nullable
as String?,signerCommonName: freezed == signerCommonName ? _self.signerCommonName : signerCommonName // ignore: cast_nullable_to_non_nullable
as String?,validFrom: freezed == validFrom ? _self.validFrom : validFrom // ignore: cast_nullable_to_non_nullable
as DateTime?,validUntil: freezed == validUntil ? _self.validUntil : validUntil // ignore: cast_nullable_to_non_nullable
as DateTime?,digitalSourceType: freezed == digitalSourceType ? _self.digitalSourceType : digitalSourceType // ignore: cast_nullable_to_non_nullable
as DigitalSourceType?,
  ));
}


}

// dart format on
