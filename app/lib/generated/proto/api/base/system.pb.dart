//
//  Generated code. Do not modify.
//  source: api/base/system.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class Info_Request extends $pb.GeneratedMessage {
  factory Info_Request() => create();
  Info_Request._() : super();
  factory Info_Request.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Info_Request.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Info.Request', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.base'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Info_Request clone() => Info_Request()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Info_Request copyWith(void Function(Info_Request) updates) => super.copyWith((message) => updates(message as Info_Request)) as Info_Request;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Info_Request create() => Info_Request._();
  Info_Request createEmptyInstance() => create();
  static $pb.PbList<Info_Request> createRepeated() => $pb.PbList<Info_Request>();
  @$core.pragma('dart2js:noInline')
  static Info_Request getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Info_Request>(create);
  static Info_Request? _defaultInstance;
}

class Info_Response extends $pb.GeneratedMessage {
  factory Info_Response({
    Info? result,
  }) {
    final $result = create();
    if (result != null) {
      $result.result = result;
    }
    return $result;
  }
  Info_Response._() : super();
  factory Info_Response.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Info_Response.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Info.Response', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.base'), createEmptyInstance: create)
    ..aOM<Info>(1, _omitFieldNames ? '' : 'result', subBuilder: Info.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Info_Response clone() => Info_Response()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Info_Response copyWith(void Function(Info_Response) updates) => super.copyWith((message) => updates(message as Info_Response)) as Info_Response;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Info_Response create() => Info_Response._();
  Info_Response createEmptyInstance() => create();
  static $pb.PbList<Info_Response> createRepeated() => $pb.PbList<Info_Response>();
  @$core.pragma('dart2js:noInline')
  static Info_Response getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Info_Response>(create);
  static Info_Response? _defaultInstance;

  @$pb.TagNumber(1)
  Info get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(Info v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  Info ensureResult() => $_ensure(0);
}

class Info extends $pb.GeneratedMessage {
  factory Info({
    $core.String? os,
    $core.String? arch,
    $core.String? runtime,
    $core.String? version,
    $core.String? description,
  }) {
    final $result = create();
    if (os != null) {
      $result.os = os;
    }
    if (arch != null) {
      $result.arch = arch;
    }
    if (runtime != null) {
      $result.runtime = runtime;
    }
    if (version != null) {
      $result.version = version;
    }
    if (description != null) {
      $result.description = description;
    }
    return $result;
  }
  Info._() : super();
  factory Info.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Info.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Info', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.base'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'os')
    ..aOS(2, _omitFieldNames ? '' : 'arch')
    ..aOS(3, _omitFieldNames ? '' : 'runtime')
    ..aOS(4, _omitFieldNames ? '' : 'version')
    ..aOS(5, _omitFieldNames ? '' : 'description')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Info clone() => Info()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Info copyWith(void Function(Info) updates) => super.copyWith((message) => updates(message as Info)) as Info;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Info create() => Info._();
  Info createEmptyInstance() => create();
  static $pb.PbList<Info> createRepeated() => $pb.PbList<Info>();
  @$core.pragma('dart2js:noInline')
  static Info getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Info>(create);
  static Info? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get os => $_getSZ(0);
  @$pb.TagNumber(1)
  set os($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOs() => $_has(0);
  @$pb.TagNumber(1)
  void clearOs() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get arch => $_getSZ(1);
  @$pb.TagNumber(2)
  set arch($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasArch() => $_has(1);
  @$pb.TagNumber(2)
  void clearArch() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get runtime => $_getSZ(2);
  @$pb.TagNumber(3)
  set runtime($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRuntime() => $_has(2);
  @$pb.TagNumber(3)
  void clearRuntime() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get version => $_getSZ(3);
  @$pb.TagNumber(4)
  set version($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasVersion() => $_has(3);
  @$pb.TagNumber(4)
  void clearVersion() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get description => $_getSZ(4);
  @$pb.TagNumber(5)
  set description($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasDescription() => $_has(4);
  @$pb.TagNumber(5)
  void clearDescription() => clearField(5);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
