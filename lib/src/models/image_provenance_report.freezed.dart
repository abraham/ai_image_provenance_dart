// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_provenance_report.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ImageProvenanceReport {

 ImageFormat get format; AiUseAssessment get aiUse; WatermarkStatus get watermarkStatus; ContentCredentialReport get contentCredentials; List<ProvenanceMetadata> get metadata; List<WatermarkFinding> get watermarks; List<InspectionWarning> get warnings;
/// Create a copy of ImageProvenanceReport
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ImageProvenanceReportCopyWith<ImageProvenanceReport> get copyWith => _$ImageProvenanceReportCopyWithImpl<ImageProvenanceReport>(this as ImageProvenanceReport, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as ImageProvenanceReport;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ImageProvenanceReport&&(identical(other.format, _this.format) || other.format == _this.format)&&(identical(other.aiUse, _this.aiUse) || other.aiUse == _this.aiUse)&&(identical(other.watermarkStatus, _this.watermarkStatus) || other.watermarkStatus == _this.watermarkStatus)&&(identical(other.contentCredentials, _this.contentCredentials) || other.contentCredentials == _this.contentCredentials)&&const DeepCollectionEquality().equals(other.metadata, _this.metadata)&&const DeepCollectionEquality().equals(other.watermarks, _this.watermarks)&&const DeepCollectionEquality().equals(other.warnings, _this.warnings));
}


@override
int get hashCode {
  final _this = this as ImageProvenanceReport;
  return Object.hash(runtimeType,_this.format,_this.aiUse,_this.watermarkStatus,_this.contentCredentials,const DeepCollectionEquality().hash(_this.metadata),const DeepCollectionEquality().hash(_this.watermarks),const DeepCollectionEquality().hash(_this.warnings));
}

@override
String toString() {
  final _this = this as ImageProvenanceReport;
  return 'ImageProvenanceReport(format: ${_this.format}, aiUse: ${_this.aiUse}, watermarkStatus: ${_this.watermarkStatus}, contentCredentials: ${_this.contentCredentials}, metadata: ${_this.metadata}, watermarks: ${_this.watermarks}, warnings: ${_this.warnings})';
}


}

/// @nodoc
abstract mixin class $ImageProvenanceReportCopyWith<$Res>  {
  factory $ImageProvenanceReportCopyWith(ImageProvenanceReport value, $Res Function(ImageProvenanceReport) _then) = _$ImageProvenanceReportCopyWithImpl;
@useResult
$Res call({
 ImageFormat format, AiUseAssessment aiUse, WatermarkStatus watermarkStatus, ContentCredentialReport contentCredentials, List<ProvenanceMetadata> metadata, List<WatermarkFinding> watermarks, List<InspectionWarning> warnings
});


$AiUseAssessmentCopyWith<$Res> get aiUse;$ContentCredentialReportCopyWith<$Res> get contentCredentials;

}
/// @nodoc
class _$ImageProvenanceReportCopyWithImpl<$Res>
    implements $ImageProvenanceReportCopyWith<$Res> {
  _$ImageProvenanceReportCopyWithImpl(this._self, this._then);

  final ImageProvenanceReport _self;
  final $Res Function(ImageProvenanceReport) _then;

/// Create a copy of ImageProvenanceReport
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? format = null,Object? aiUse = null,Object? watermarkStatus = null,Object? contentCredentials = null,Object? metadata = null,Object? watermarks = null,Object? warnings = null,}) {
  return _then(ImageProvenanceReport(
format: null == format ? _self.format : format // ignore: cast_nullable_to_non_nullable
as ImageFormat,aiUse: null == aiUse ? _self.aiUse : aiUse // ignore: cast_nullable_to_non_nullable
as AiUseAssessment,watermarkStatus: null == watermarkStatus ? _self.watermarkStatus : watermarkStatus // ignore: cast_nullable_to_non_nullable
as WatermarkStatus,contentCredentials: null == contentCredentials ? _self.contentCredentials : contentCredentials // ignore: cast_nullable_to_non_nullable
as ContentCredentialReport,metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as List<ProvenanceMetadata>,watermarks: null == watermarks ? _self.watermarks : watermarks // ignore: cast_nullable_to_non_nullable
as List<WatermarkFinding>,warnings: null == warnings ? _self.warnings : warnings // ignore: cast_nullable_to_non_nullable
as List<InspectionWarning>,
  ));
}
/// Create a copy of ImageProvenanceReport
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AiUseAssessmentCopyWith<$Res> get aiUse {
  
  return $AiUseAssessmentCopyWith<$Res>(_self.aiUse, (value) {
    return _then(_self.copyWith(aiUse: value));
  });
}/// Create a copy of ImageProvenanceReport
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ContentCredentialReportCopyWith<$Res> get contentCredentials {
  
  return $ContentCredentialReportCopyWith<$Res>(_self.contentCredentials, (value) {
    return _then(_self.copyWith(contentCredentials: value));
  });
}
}


/// Adds pattern-matching-related methods to [ImageProvenanceReport].
extension ImageProvenanceReportPatterns on ImageProvenanceReport {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ImageProvenanceReport value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ImageProvenanceReport() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ImageProvenanceReport value)  $default,){
final _that = this;
switch (_that) {
case _ImageProvenanceReport():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ImageProvenanceReport value)?  $default,){
final _that = this;
switch (_that) {
case _ImageProvenanceReport() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ImageFormat format,  AiUseAssessment aiUse,  WatermarkStatus watermarkStatus,  ContentCredentialReport contentCredentials,  List<ProvenanceMetadata> metadata,  List<WatermarkFinding> watermarks,  List<InspectionWarning> warnings)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ImageProvenanceReport() when $default != null:
return $default(_that.format,_that.aiUse,_that.watermarkStatus,_that.contentCredentials,_that.metadata,_that.watermarks,_that.warnings);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ImageFormat format,  AiUseAssessment aiUse,  WatermarkStatus watermarkStatus,  ContentCredentialReport contentCredentials,  List<ProvenanceMetadata> metadata,  List<WatermarkFinding> watermarks,  List<InspectionWarning> warnings)  $default,) {final _that = this;
switch (_that) {
case _ImageProvenanceReport():
return $default(_that.format,_that.aiUse,_that.watermarkStatus,_that.contentCredentials,_that.metadata,_that.watermarks,_that.warnings);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ImageFormat format,  AiUseAssessment aiUse,  WatermarkStatus watermarkStatus,  ContentCredentialReport contentCredentials,  List<ProvenanceMetadata> metadata,  List<WatermarkFinding> watermarks,  List<InspectionWarning> warnings)?  $default,) {final _that = this;
switch (_that) {
case _ImageProvenanceReport() when $default != null:
return $default(_that.format,_that.aiUse,_that.watermarkStatus,_that.contentCredentials,_that.metadata,_that.watermarks,_that.warnings);case _:
  return null;

}
}

}

/// @nodoc


class _ImageProvenanceReport implements ImageProvenanceReport {
  const _ImageProvenanceReport({required this.format, required this.aiUse, required this.watermarkStatus, required this.contentCredentials, required  List<ProvenanceMetadata> metadata, required  List<WatermarkFinding> watermarks, required  List<InspectionWarning> warnings}): _metadata = metadata,_watermarks = watermarks,_warnings = warnings;
  

@override final  ImageFormat format;
@override final  AiUseAssessment aiUse;
@override final  WatermarkStatus watermarkStatus;
@override final  ContentCredentialReport contentCredentials;
 final  List<ProvenanceMetadata> _metadata;
@override List<ProvenanceMetadata> get metadata {
  if (_metadata is EqualUnmodifiableListView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_metadata);
}

 final  List<WatermarkFinding> _watermarks;
@override List<WatermarkFinding> get watermarks {
  if (_watermarks is EqualUnmodifiableListView) return _watermarks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_watermarks);
}

 final  List<InspectionWarning> _warnings;
@override List<InspectionWarning> get warnings {
  if (_warnings is EqualUnmodifiableListView) return _warnings;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_warnings);
}


/// Create a copy of ImageProvenanceReport
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ImageProvenanceReportCopyWith<_ImageProvenanceReport> get copyWith => __$ImageProvenanceReportCopyWithImpl<_ImageProvenanceReport>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ImageProvenanceReport&&(identical(other.format, format) || other.format == format)&&(identical(other.aiUse, aiUse) || other.aiUse == aiUse)&&(identical(other.watermarkStatus, watermarkStatus) || other.watermarkStatus == watermarkStatus)&&(identical(other.contentCredentials, contentCredentials) || other.contentCredentials == contentCredentials)&&const DeepCollectionEquality().equals(other.metadata, _metadata)&&const DeepCollectionEquality().equals(other.watermarks, _watermarks)&&const DeepCollectionEquality().equals(other.warnings, _warnings));
}


@override
int get hashCode {
    return Object.hash(runtimeType,format,aiUse,watermarkStatus,contentCredentials,const DeepCollectionEquality().hash(_metadata),const DeepCollectionEquality().hash(_watermarks),const DeepCollectionEquality().hash(_warnings));
}

@override
String toString() {
    return 'ImageProvenanceReport(format: $format, aiUse: $aiUse, watermarkStatus: $watermarkStatus, contentCredentials: $contentCredentials, metadata: $metadata, watermarks: $watermarks, warnings: $warnings)';
}


}

/// @nodoc
abstract mixin class _$ImageProvenanceReportCopyWith<$Res> implements $ImageProvenanceReportCopyWith<$Res> {
  factory _$ImageProvenanceReportCopyWith(_ImageProvenanceReport value, $Res Function(_ImageProvenanceReport) _then) = __$ImageProvenanceReportCopyWithImpl;
@override @useResult
$Res call({
 ImageFormat format, AiUseAssessment aiUse, WatermarkStatus watermarkStatus, ContentCredentialReport contentCredentials, List<ProvenanceMetadata> metadata, List<WatermarkFinding> watermarks, List<InspectionWarning> warnings
});


@override $AiUseAssessmentCopyWith<$Res> get aiUse;@override $ContentCredentialReportCopyWith<$Res> get contentCredentials;

}
/// @nodoc
class __$ImageProvenanceReportCopyWithImpl<$Res>
    implements _$ImageProvenanceReportCopyWith<$Res> {
  __$ImageProvenanceReportCopyWithImpl(this._self, this._then);

  final _ImageProvenanceReport _self;
  final $Res Function(_ImageProvenanceReport) _then;

/// Create a copy of ImageProvenanceReport
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? format = null,Object? aiUse = null,Object? watermarkStatus = null,Object? contentCredentials = null,Object? metadata = null,Object? watermarks = null,Object? warnings = null,}) {
  return _then(_ImageProvenanceReport(
format: null == format ? _self.format : format // ignore: cast_nullable_to_non_nullable
as ImageFormat,aiUse: null == aiUse ? _self.aiUse : aiUse // ignore: cast_nullable_to_non_nullable
as AiUseAssessment,watermarkStatus: null == watermarkStatus ? _self.watermarkStatus : watermarkStatus // ignore: cast_nullable_to_non_nullable
as WatermarkStatus,contentCredentials: null == contentCredentials ? _self.contentCredentials : contentCredentials // ignore: cast_nullable_to_non_nullable
as ContentCredentialReport,metadata: null == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as List<ProvenanceMetadata>,watermarks: null == watermarks ? _self._watermarks : watermarks // ignore: cast_nullable_to_non_nullable
as List<WatermarkFinding>,warnings: null == warnings ? _self._warnings : warnings // ignore: cast_nullable_to_non_nullable
as List<InspectionWarning>,
  ));
}

/// Create a copy of ImageProvenanceReport
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AiUseAssessmentCopyWith<$Res> get aiUse {
  
  return $AiUseAssessmentCopyWith<$Res>(_self.aiUse, (value) {
    return _then(_self.copyWith(aiUse: value));
  });
}/// Create a copy of ImageProvenanceReport
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ContentCredentialReportCopyWith<$Res> get contentCredentials {
  
  return $ContentCredentialReportCopyWith<$Res>(_self.contentCredentials, (value) {
    return _then(_self.copyWith(contentCredentials: value));
  });
}
}

// dart format on
