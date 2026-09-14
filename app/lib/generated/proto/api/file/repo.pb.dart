//
//  Generated code. Do not modify.
//  source: api/file/repo.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../google/protobuf/timestamp.pb.dart' as $3;

class Repo_ListRequest extends $pb.GeneratedMessage {
  factory Repo_ListRequest({
    $core.Map<$core.String, $core.String>? filter,
  }) {
    final $result = create();
    if (filter != null) {
      $result.filter.addAll(filter);
    }
    return $result;
  }
  Repo_ListRequest._() : super();
  factory Repo_ListRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Repo_ListRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Repo.ListRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.file'), createEmptyInstance: create)
    ..m<$core.String, $core.String>(1, _omitFieldNames ? '' : 'filter', entryClassName: 'Repo.ListRequest.FilterEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('api.file'))
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Repo_ListRequest clone() => Repo_ListRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Repo_ListRequest copyWith(void Function(Repo_ListRequest) updates) => super.copyWith((message) => updates(message as Repo_ListRequest)) as Repo_ListRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Repo_ListRequest create() => Repo_ListRequest._();
  Repo_ListRequest createEmptyInstance() => create();
  static $pb.PbList<Repo_ListRequest> createRepeated() => $pb.PbList<Repo_ListRequest>();
  @$core.pragma('dart2js:noInline')
  static Repo_ListRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Repo_ListRequest>(create);
  static Repo_ListRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.Map<$core.String, $core.String> get filter => $_getMap(0);
}

class Repo_ListResponse extends $pb.GeneratedMessage {
  factory Repo_ListResponse({
    $core.Iterable<Repo>? results,
  }) {
    final $result = create();
    if (results != null) {
      $result.results.addAll(results);
    }
    return $result;
  }
  Repo_ListResponse._() : super();
  factory Repo_ListResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Repo_ListResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Repo.ListResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.file'), createEmptyInstance: create)
    ..pc<Repo>(1, _omitFieldNames ? '' : 'results', $pb.PbFieldType.PM, subBuilder: Repo.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Repo_ListResponse clone() => Repo_ListResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Repo_ListResponse copyWith(void Function(Repo_ListResponse) updates) => super.copyWith((message) => updates(message as Repo_ListResponse)) as Repo_ListResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Repo_ListResponse create() => Repo_ListResponse._();
  Repo_ListResponse createEmptyInstance() => create();
  static $pb.PbList<Repo_ListResponse> createRepeated() => $pb.PbList<Repo_ListResponse>();
  @$core.pragma('dart2js:noInline')
  static Repo_ListResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Repo_ListResponse>(create);
  static Repo_ListResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Repo> get results => $_getList(0);
}

class Repo_CreateRequest extends $pb.GeneratedMessage {
  factory Repo_CreateRequest({
    Repo? payload,
  }) {
    final $result = create();
    if (payload != null) {
      $result.payload = payload;
    }
    return $result;
  }
  Repo_CreateRequest._() : super();
  factory Repo_CreateRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Repo_CreateRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Repo.CreateRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.file'), createEmptyInstance: create)
    ..aOM<Repo>(1, _omitFieldNames ? '' : 'payload', subBuilder: Repo.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Repo_CreateRequest clone() => Repo_CreateRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Repo_CreateRequest copyWith(void Function(Repo_CreateRequest) updates) => super.copyWith((message) => updates(message as Repo_CreateRequest)) as Repo_CreateRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Repo_CreateRequest create() => Repo_CreateRequest._();
  Repo_CreateRequest createEmptyInstance() => create();
  static $pb.PbList<Repo_CreateRequest> createRepeated() => $pb.PbList<Repo_CreateRequest>();
  @$core.pragma('dart2js:noInline')
  static Repo_CreateRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Repo_CreateRequest>(create);
  static Repo_CreateRequest? _defaultInstance;

  @$pb.TagNumber(1)
  Repo get payload => $_getN(0);
  @$pb.TagNumber(1)
  set payload(Repo v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPayload() => $_has(0);
  @$pb.TagNumber(1)
  void clearPayload() => clearField(1);
  @$pb.TagNumber(1)
  Repo ensurePayload() => $_ensure(0);
}

class Repo_CreateResponse extends $pb.GeneratedMessage {
  factory Repo_CreateResponse({
    Repo? result,
  }) {
    final $result = create();
    if (result != null) {
      $result.result = result;
    }
    return $result;
  }
  Repo_CreateResponse._() : super();
  factory Repo_CreateResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Repo_CreateResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Repo.CreateResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.file'), createEmptyInstance: create)
    ..aOM<Repo>(1, _omitFieldNames ? '' : 'result', subBuilder: Repo.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Repo_CreateResponse clone() => Repo_CreateResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Repo_CreateResponse copyWith(void Function(Repo_CreateResponse) updates) => super.copyWith((message) => updates(message as Repo_CreateResponse)) as Repo_CreateResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Repo_CreateResponse create() => Repo_CreateResponse._();
  Repo_CreateResponse createEmptyInstance() => create();
  static $pb.PbList<Repo_CreateResponse> createRepeated() => $pb.PbList<Repo_CreateResponse>();
  @$core.pragma('dart2js:noInline')
  static Repo_CreateResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Repo_CreateResponse>(create);
  static Repo_CreateResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Repo get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(Repo v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  Repo ensureResult() => $_ensure(0);
}

class Repo_TestRequest extends $pb.GeneratedMessage {
  factory Repo_TestRequest({
    Repo? payload,
  }) {
    final $result = create();
    if (payload != null) {
      $result.payload = payload;
    }
    return $result;
  }
  Repo_TestRequest._() : super();
  factory Repo_TestRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Repo_TestRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Repo.TestRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.file'), createEmptyInstance: create)
    ..aOM<Repo>(1, _omitFieldNames ? '' : 'payload', subBuilder: Repo.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Repo_TestRequest clone() => Repo_TestRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Repo_TestRequest copyWith(void Function(Repo_TestRequest) updates) => super.copyWith((message) => updates(message as Repo_TestRequest)) as Repo_TestRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Repo_TestRequest create() => Repo_TestRequest._();
  Repo_TestRequest createEmptyInstance() => create();
  static $pb.PbList<Repo_TestRequest> createRepeated() => $pb.PbList<Repo_TestRequest>();
  @$core.pragma('dart2js:noInline')
  static Repo_TestRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Repo_TestRequest>(create);
  static Repo_TestRequest? _defaultInstance;

  @$pb.TagNumber(1)
  Repo get payload => $_getN(0);
  @$pb.TagNumber(1)
  set payload(Repo v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPayload() => $_has(0);
  @$pb.TagNumber(1)
  void clearPayload() => clearField(1);
  @$pb.TagNumber(1)
  Repo ensurePayload() => $_ensure(0);
}

class Repo_TestResponse extends $pb.GeneratedMessage {
  factory Repo_TestResponse({
    $core.bool? success,
  }) {
    final $result = create();
    if (success != null) {
      $result.success = success;
    }
    return $result;
  }
  Repo_TestResponse._() : super();
  factory Repo_TestResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Repo_TestResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Repo.TestResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.file'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Repo_TestResponse clone() => Repo_TestResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Repo_TestResponse copyWith(void Function(Repo_TestResponse) updates) => super.copyWith((message) => updates(message as Repo_TestResponse)) as Repo_TestResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Repo_TestResponse create() => Repo_TestResponse._();
  Repo_TestResponse createEmptyInstance() => create();
  static $pb.PbList<Repo_TestResponse> createRepeated() => $pb.PbList<Repo_TestResponse>();
  @$core.pragma('dart2js:noInline')
  static Repo_TestResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Repo_TestResponse>(create);
  static Repo_TestResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);
}

class Repo_UpdateRequest extends $pb.GeneratedMessage {
  factory Repo_UpdateRequest({
    Repo? payload,
  }) {
    final $result = create();
    if (payload != null) {
      $result.payload = payload;
    }
    return $result;
  }
  Repo_UpdateRequest._() : super();
  factory Repo_UpdateRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Repo_UpdateRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Repo.UpdateRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.file'), createEmptyInstance: create)
    ..aOM<Repo>(1, _omitFieldNames ? '' : 'payload', subBuilder: Repo.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Repo_UpdateRequest clone() => Repo_UpdateRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Repo_UpdateRequest copyWith(void Function(Repo_UpdateRequest) updates) => super.copyWith((message) => updates(message as Repo_UpdateRequest)) as Repo_UpdateRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Repo_UpdateRequest create() => Repo_UpdateRequest._();
  Repo_UpdateRequest createEmptyInstance() => create();
  static $pb.PbList<Repo_UpdateRequest> createRepeated() => $pb.PbList<Repo_UpdateRequest>();
  @$core.pragma('dart2js:noInline')
  static Repo_UpdateRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Repo_UpdateRequest>(create);
  static Repo_UpdateRequest? _defaultInstance;

  @$pb.TagNumber(1)
  Repo get payload => $_getN(0);
  @$pb.TagNumber(1)
  set payload(Repo v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPayload() => $_has(0);
  @$pb.TagNumber(1)
  void clearPayload() => clearField(1);
  @$pb.TagNumber(1)
  Repo ensurePayload() => $_ensure(0);
}

class Repo_UpdateResponse extends $pb.GeneratedMessage {
  factory Repo_UpdateResponse({
    Repo? result,
  }) {
    final $result = create();
    if (result != null) {
      $result.result = result;
    }
    return $result;
  }
  Repo_UpdateResponse._() : super();
  factory Repo_UpdateResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Repo_UpdateResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Repo.UpdateResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.file'), createEmptyInstance: create)
    ..aOM<Repo>(1, _omitFieldNames ? '' : 'result', subBuilder: Repo.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Repo_UpdateResponse clone() => Repo_UpdateResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Repo_UpdateResponse copyWith(void Function(Repo_UpdateResponse) updates) => super.copyWith((message) => updates(message as Repo_UpdateResponse)) as Repo_UpdateResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Repo_UpdateResponse create() => Repo_UpdateResponse._();
  Repo_UpdateResponse createEmptyInstance() => create();
  static $pb.PbList<Repo_UpdateResponse> createRepeated() => $pb.PbList<Repo_UpdateResponse>();
  @$core.pragma('dart2js:noInline')
  static Repo_UpdateResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Repo_UpdateResponse>(create);
  static Repo_UpdateResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Repo get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(Repo v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  Repo ensureResult() => $_ensure(0);
}

class Repo_DeleteRequest extends $pb.GeneratedMessage {
  factory Repo_DeleteRequest({
    $core.int? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  Repo_DeleteRequest._() : super();
  factory Repo_DeleteRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Repo_DeleteRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Repo.DeleteRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.file'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Repo_DeleteRequest clone() => Repo_DeleteRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Repo_DeleteRequest copyWith(void Function(Repo_DeleteRequest) updates) => super.copyWith((message) => updates(message as Repo_DeleteRequest)) as Repo_DeleteRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Repo_DeleteRequest create() => Repo_DeleteRequest._();
  Repo_DeleteRequest createEmptyInstance() => create();
  static $pb.PbList<Repo_DeleteRequest> createRepeated() => $pb.PbList<Repo_DeleteRequest>();
  @$core.pragma('dart2js:noInline')
  static Repo_DeleteRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Repo_DeleteRequest>(create);
  static Repo_DeleteRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class Repo_DeleteResponse extends $pb.GeneratedMessage {
  factory Repo_DeleteResponse() => create();
  Repo_DeleteResponse._() : super();
  factory Repo_DeleteResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Repo_DeleteResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Repo.DeleteResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.file'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Repo_DeleteResponse clone() => Repo_DeleteResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Repo_DeleteResponse copyWith(void Function(Repo_DeleteResponse) updates) => super.copyWith((message) => updates(message as Repo_DeleteResponse)) as Repo_DeleteResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Repo_DeleteResponse create() => Repo_DeleteResponse._();
  Repo_DeleteResponse createEmptyInstance() => create();
  static $pb.PbList<Repo_DeleteResponse> createRepeated() => $pb.PbList<Repo_DeleteResponse>();
  @$core.pragma('dart2js:noInline')
  static Repo_DeleteResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Repo_DeleteResponse>(create);
  static Repo_DeleteResponse? _defaultInstance;
}

class Repo extends $pb.GeneratedMessage {
  factory Repo({
    $core.int? id,
    $3.Timestamp? createdAt,
    $3.Timestamp? updatedAt,
    $core.String? name,
    $core.String? path,
    $core.bool? status,
    $core.String? driver,
    $core.String? option,
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
    if (name != null) {
      $result.name = name;
    }
    if (path != null) {
      $result.path = path;
    }
    if (status != null) {
      $result.status = status;
    }
    if (driver != null) {
      $result.driver = driver;
    }
    if (option != null) {
      $result.option = option;
    }
    return $result;
  }
  Repo._() : super();
  factory Repo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Repo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Repo', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.file'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOM<$3.Timestamp>(2, _omitFieldNames ? '' : 'createdAt', subBuilder: $3.Timestamp.create)
    ..aOM<$3.Timestamp>(3, _omitFieldNames ? '' : 'updatedAt', subBuilder: $3.Timestamp.create)
    ..aOS(4, _omitFieldNames ? '' : 'name')
    ..aOS(5, _omitFieldNames ? '' : 'path')
    ..aOB(6, _omitFieldNames ? '' : 'status')
    ..aOS(7, _omitFieldNames ? '' : 'driver')
    ..aOS(8, _omitFieldNames ? '' : 'option')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Repo clone() => Repo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Repo copyWith(void Function(Repo) updates) => super.copyWith((message) => updates(message as Repo)) as Repo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Repo create() => Repo._();
  Repo createEmptyInstance() => create();
  static $pb.PbList<Repo> createRepeated() => $pb.PbList<Repo>();
  @$core.pragma('dart2js:noInline')
  static Repo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Repo>(create);
  static Repo? _defaultInstance;

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
  $3.Timestamp get createdAt => $_getN(1);
  @$pb.TagNumber(2)
  set createdAt($3.Timestamp v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCreatedAt() => $_has(1);
  @$pb.TagNumber(2)
  void clearCreatedAt() => clearField(2);
  @$pb.TagNumber(2)
  $3.Timestamp ensureCreatedAt() => $_ensure(1);

  /// @gotags: gorm:"serializer:protobuf_timestamp;type:datetime"
  @$pb.TagNumber(3)
  $3.Timestamp get updatedAt => $_getN(2);
  @$pb.TagNumber(3)
  set updatedAt($3.Timestamp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasUpdatedAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearUpdatedAt() => clearField(3);
  @$pb.TagNumber(3)
  $3.Timestamp ensureUpdatedAt() => $_ensure(2);

  /// @gotags: gorm:"not null;unique"
  @$pb.TagNumber(4)
  $core.String get name => $_getSZ(3);
  @$pb.TagNumber(4)
  set name($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasName() => $_has(3);
  @$pb.TagNumber(4)
  void clearName() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get path => $_getSZ(4);
  @$pb.TagNumber(5)
  set path($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPath() => $_has(4);
  @$pb.TagNumber(5)
  void clearPath() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get status => $_getBF(5);
  @$pb.TagNumber(6)
  set status($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasStatus() => $_has(5);
  @$pb.TagNumber(6)
  void clearStatus() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get driver => $_getSZ(6);
  @$pb.TagNumber(7)
  set driver($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasDriver() => $_has(6);
  @$pb.TagNumber(7)
  void clearDriver() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get option => $_getSZ(7);
  @$pb.TagNumber(8)
  set option($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasOption() => $_has(7);
  @$pb.TagNumber(8)
  void clearOption() => clearField(8);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
