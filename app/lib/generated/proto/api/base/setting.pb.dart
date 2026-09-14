//
//  Generated code. Do not modify.
//  source: api/base/setting.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../google/protobuf/timestamp.pb.dart' as $4;

class Setting_GetRequest extends $pb.GeneratedMessage {
  factory Setting_GetRequest({
    $core.String? key,
  }) {
    final $result = create();
    if (key != null) {
      $result.key = key;
    }
    return $result;
  }
  Setting_GetRequest._() : super();
  factory Setting_GetRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Setting_GetRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Setting.GetRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.base'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'key')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Setting_GetRequest clone() => Setting_GetRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Setting_GetRequest copyWith(void Function(Setting_GetRequest) updates) => super.copyWith((message) => updates(message as Setting_GetRequest)) as Setting_GetRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Setting_GetRequest create() => Setting_GetRequest._();
  Setting_GetRequest createEmptyInstance() => create();
  static $pb.PbList<Setting_GetRequest> createRepeated() => $pb.PbList<Setting_GetRequest>();
  @$core.pragma('dart2js:noInline')
  static Setting_GetRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Setting_GetRequest>(create);
  static Setting_GetRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get key => $_getSZ(0);
  @$pb.TagNumber(1)
  set key($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => clearField(1);
}

class Setting_GetResponse extends $pb.GeneratedMessage {
  factory Setting_GetResponse({
    Setting? result,
  }) {
    final $result = create();
    if (result != null) {
      $result.result = result;
    }
    return $result;
  }
  Setting_GetResponse._() : super();
  factory Setting_GetResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Setting_GetResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Setting.GetResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.base'), createEmptyInstance: create)
    ..aOM<Setting>(1, _omitFieldNames ? '' : 'result', subBuilder: Setting.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Setting_GetResponse clone() => Setting_GetResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Setting_GetResponse copyWith(void Function(Setting_GetResponse) updates) => super.copyWith((message) => updates(message as Setting_GetResponse)) as Setting_GetResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Setting_GetResponse create() => Setting_GetResponse._();
  Setting_GetResponse createEmptyInstance() => create();
  static $pb.PbList<Setting_GetResponse> createRepeated() => $pb.PbList<Setting_GetResponse>();
  @$core.pragma('dart2js:noInline')
  static Setting_GetResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Setting_GetResponse>(create);
  static Setting_GetResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Setting get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(Setting v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  Setting ensureResult() => $_ensure(0);
}

class Setting_UpdateRequest extends $pb.GeneratedMessage {
  factory Setting_UpdateRequest({
    $core.String? key,
    $core.String? value,
  }) {
    final $result = create();
    if (key != null) {
      $result.key = key;
    }
    if (value != null) {
      $result.value = value;
    }
    return $result;
  }
  Setting_UpdateRequest._() : super();
  factory Setting_UpdateRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Setting_UpdateRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Setting.UpdateRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.base'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'key')
    ..aOS(2, _omitFieldNames ? '' : 'value')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Setting_UpdateRequest clone() => Setting_UpdateRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Setting_UpdateRequest copyWith(void Function(Setting_UpdateRequest) updates) => super.copyWith((message) => updates(message as Setting_UpdateRequest)) as Setting_UpdateRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Setting_UpdateRequest create() => Setting_UpdateRequest._();
  Setting_UpdateRequest createEmptyInstance() => create();
  static $pb.PbList<Setting_UpdateRequest> createRepeated() => $pb.PbList<Setting_UpdateRequest>();
  @$core.pragma('dart2js:noInline')
  static Setting_UpdateRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Setting_UpdateRequest>(create);
  static Setting_UpdateRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get key => $_getSZ(0);
  @$pb.TagNumber(1)
  set key($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get value => $_getSZ(1);
  @$pb.TagNumber(2)
  set value($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => clearField(2);
}

class Setting_UpdateResponse extends $pb.GeneratedMessage {
  factory Setting_UpdateResponse({
    Setting? result,
  }) {
    final $result = create();
    if (result != null) {
      $result.result = result;
    }
    return $result;
  }
  Setting_UpdateResponse._() : super();
  factory Setting_UpdateResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Setting_UpdateResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Setting.UpdateResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.base'), createEmptyInstance: create)
    ..aOM<Setting>(1, _omitFieldNames ? '' : 'result', subBuilder: Setting.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Setting_UpdateResponse clone() => Setting_UpdateResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Setting_UpdateResponse copyWith(void Function(Setting_UpdateResponse) updates) => super.copyWith((message) => updates(message as Setting_UpdateResponse)) as Setting_UpdateResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Setting_UpdateResponse create() => Setting_UpdateResponse._();
  Setting_UpdateResponse createEmptyInstance() => create();
  static $pb.PbList<Setting_UpdateResponse> createRepeated() => $pb.PbList<Setting_UpdateResponse>();
  @$core.pragma('dart2js:noInline')
  static Setting_UpdateResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Setting_UpdateResponse>(create);
  static Setting_UpdateResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Setting get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(Setting v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  Setting ensureResult() => $_ensure(0);
}

class Setting_ResetRequest extends $pb.GeneratedMessage {
  factory Setting_ResetRequest({
    $core.String? key,
  }) {
    final $result = create();
    if (key != null) {
      $result.key = key;
    }
    return $result;
  }
  Setting_ResetRequest._() : super();
  factory Setting_ResetRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Setting_ResetRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Setting.ResetRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.base'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'key')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Setting_ResetRequest clone() => Setting_ResetRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Setting_ResetRequest copyWith(void Function(Setting_ResetRequest) updates) => super.copyWith((message) => updates(message as Setting_ResetRequest)) as Setting_ResetRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Setting_ResetRequest create() => Setting_ResetRequest._();
  Setting_ResetRequest createEmptyInstance() => create();
  static $pb.PbList<Setting_ResetRequest> createRepeated() => $pb.PbList<Setting_ResetRequest>();
  @$core.pragma('dart2js:noInline')
  static Setting_ResetRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Setting_ResetRequest>(create);
  static Setting_ResetRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get key => $_getSZ(0);
  @$pb.TagNumber(1)
  set key($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => clearField(1);
}

class Setting_ResetResponse extends $pb.GeneratedMessage {
  factory Setting_ResetResponse() => create();
  Setting_ResetResponse._() : super();
  factory Setting_ResetResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Setting_ResetResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Setting.ResetResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.base'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Setting_ResetResponse clone() => Setting_ResetResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Setting_ResetResponse copyWith(void Function(Setting_ResetResponse) updates) => super.copyWith((message) => updates(message as Setting_ResetResponse)) as Setting_ResetResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Setting_ResetResponse create() => Setting_ResetResponse._();
  Setting_ResetResponse createEmptyInstance() => create();
  static $pb.PbList<Setting_ResetResponse> createRepeated() => $pb.PbList<Setting_ResetResponse>();
  @$core.pragma('dart2js:noInline')
  static Setting_ResetResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Setting_ResetResponse>(create);
  static Setting_ResetResponse? _defaultInstance;
}

class Setting extends $pb.GeneratedMessage {
  factory Setting({
    $core.int? id,
    $4.Timestamp? createdAt,
    $4.Timestamp? updatedAt,
    $core.String? key,
    $core.String? value,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (createdAt != null) {
      $result.createdAt = createdAt;
    }
    if (updatedAt != null) {
      $result.updatedAt = updatedAt;
    }
    if (key != null) {
      $result.key = key;
    }
    if (value != null) {
      $result.value = value;
    }
    return $result;
  }
  Setting._() : super();
  factory Setting.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Setting.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Setting', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.base'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOM<$4.Timestamp>(2, _omitFieldNames ? '' : 'createdAt', subBuilder: $4.Timestamp.create)
    ..aOM<$4.Timestamp>(3, _omitFieldNames ? '' : 'updatedAt', subBuilder: $4.Timestamp.create)
    ..aOS(4, _omitFieldNames ? '' : 'key')
    ..aOS(5, _omitFieldNames ? '' : 'value')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Setting clone() => Setting()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Setting copyWith(void Function(Setting) updates) => super.copyWith((message) => updates(message as Setting)) as Setting;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Setting create() => Setting._();
  Setting createEmptyInstance() => create();
  static $pb.PbList<Setting> createRepeated() => $pb.PbList<Setting>();
  @$core.pragma('dart2js:noInline')
  static Setting getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Setting>(create);
  static Setting? _defaultInstance;

  /// @gotags: gorm:"primary_key;auto_increment"
  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  /// @gotags: gorm:"serializer:protobuf_timestamp;type:datetime"
  @$pb.TagNumber(2)
  $4.Timestamp get createdAt => $_getN(1);
  @$pb.TagNumber(2)
  set createdAt($4.Timestamp v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCreatedAt() => $_has(1);
  @$pb.TagNumber(2)
  void clearCreatedAt() => clearField(2);
  @$pb.TagNumber(2)
  $4.Timestamp ensureCreatedAt() => $_ensure(1);

  /// @gotags: gorm:"serializer:protobuf_timestamp;type:datetime"
  @$pb.TagNumber(3)
  $4.Timestamp get updatedAt => $_getN(2);
  @$pb.TagNumber(3)
  set updatedAt($4.Timestamp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasUpdatedAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearUpdatedAt() => clearField(3);
  @$pb.TagNumber(3)
  $4.Timestamp ensureUpdatedAt() => $_ensure(2);

  /// @gotags: gorm:"size:128;not null;unique"
  @$pb.TagNumber(4)
  $core.String get key => $_getSZ(3);
  @$pb.TagNumber(4)
  set key($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasKey() => $_has(3);
  @$pb.TagNumber(4)
  void clearKey() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get value => $_getSZ(4);
  @$pb.TagNumber(5)
  set value($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasValue() => $_has(4);
  @$pb.TagNumber(5)
  void clearValue() => clearField(5);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
