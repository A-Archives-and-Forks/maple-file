//
//  Generated code. Do not modify.
//  source: api/base/task.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../google/protobuf/timestamp.pb.dart' as $4;
import 'task.pbenum.dart';

export 'task.pbenum.dart';

class Task_ListRequest extends $pb.GeneratedMessage {
  factory Task_ListRequest({
    $core.Map<$core.String, $core.String>? filter,
  }) {
    final $result = create();
    if (filter != null) {
      $result.filter.addAll(filter);
    }
    return $result;
  }
  Task_ListRequest._() : super();
  factory Task_ListRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Task_ListRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Task.ListRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.base'), createEmptyInstance: create)
    ..m<$core.String, $core.String>(1, _omitFieldNames ? '' : 'filter', entryClassName: 'Task.ListRequest.FilterEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('api.base'))
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Task_ListRequest clone() => Task_ListRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Task_ListRequest copyWith(void Function(Task_ListRequest) updates) => super.copyWith((message) => updates(message as Task_ListRequest)) as Task_ListRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Task_ListRequest create() => Task_ListRequest._();
  Task_ListRequest createEmptyInstance() => create();
  static $pb.PbList<Task_ListRequest> createRepeated() => $pb.PbList<Task_ListRequest>();
  @$core.pragma('dart2js:noInline')
  static Task_ListRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Task_ListRequest>(create);
  static Task_ListRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.Map<$core.String, $core.String> get filter => $_getMap(0);
}

class Task_ListResponse extends $pb.GeneratedMessage {
  factory Task_ListResponse({
    $core.Iterable<Task>? results,
  }) {
    final $result = create();
    if (results != null) {
      $result.results.addAll(results);
    }
    return $result;
  }
  Task_ListResponse._() : super();
  factory Task_ListResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Task_ListResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Task.ListResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.base'), createEmptyInstance: create)
    ..pc<Task>(1, _omitFieldNames ? '' : 'results', $pb.PbFieldType.PM, subBuilder: Task.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Task_ListResponse clone() => Task_ListResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Task_ListResponse copyWith(void Function(Task_ListResponse) updates) => super.copyWith((message) => updates(message as Task_ListResponse)) as Task_ListResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Task_ListResponse create() => Task_ListResponse._();
  Task_ListResponse createEmptyInstance() => create();
  static $pb.PbList<Task_ListResponse> createRepeated() => $pb.PbList<Task_ListResponse>();
  @$core.pragma('dart2js:noInline')
  static Task_ListResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Task_ListResponse>(create);
  static Task_ListResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Task> get results => $_getList(0);
}

class Task_RetryRequest extends $pb.GeneratedMessage {
  factory Task_RetryRequest({
    $core.Iterable<$core.String>? tasks,
  }) {
    final $result = create();
    if (tasks != null) {
      $result.tasks.addAll(tasks);
    }
    return $result;
  }
  Task_RetryRequest._() : super();
  factory Task_RetryRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Task_RetryRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Task.RetryRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.base'), createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'tasks')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Task_RetryRequest clone() => Task_RetryRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Task_RetryRequest copyWith(void Function(Task_RetryRequest) updates) => super.copyWith((message) => updates(message as Task_RetryRequest)) as Task_RetryRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Task_RetryRequest create() => Task_RetryRequest._();
  Task_RetryRequest createEmptyInstance() => create();
  static $pb.PbList<Task_RetryRequest> createRepeated() => $pb.PbList<Task_RetryRequest>();
  @$core.pragma('dart2js:noInline')
  static Task_RetryRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Task_RetryRequest>(create);
  static Task_RetryRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get tasks => $_getList(0);
}

class Task_RetryResponse extends $pb.GeneratedMessage {
  factory Task_RetryResponse() => create();
  Task_RetryResponse._() : super();
  factory Task_RetryResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Task_RetryResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Task.RetryResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.base'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Task_RetryResponse clone() => Task_RetryResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Task_RetryResponse copyWith(void Function(Task_RetryResponse) updates) => super.copyWith((message) => updates(message as Task_RetryResponse)) as Task_RetryResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Task_RetryResponse create() => Task_RetryResponse._();
  Task_RetryResponse createEmptyInstance() => create();
  static $pb.PbList<Task_RetryResponse> createRepeated() => $pb.PbList<Task_RetryResponse>();
  @$core.pragma('dart2js:noInline')
  static Task_RetryResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Task_RetryResponse>(create);
  static Task_RetryResponse? _defaultInstance;
}

class Task_CancelRequest extends $pb.GeneratedMessage {
  factory Task_CancelRequest({
    $core.Iterable<$core.String>? tasks,
  }) {
    final $result = create();
    if (tasks != null) {
      $result.tasks.addAll(tasks);
    }
    return $result;
  }
  Task_CancelRequest._() : super();
  factory Task_CancelRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Task_CancelRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Task.CancelRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.base'), createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'tasks')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Task_CancelRequest clone() => Task_CancelRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Task_CancelRequest copyWith(void Function(Task_CancelRequest) updates) => super.copyWith((message) => updates(message as Task_CancelRequest)) as Task_CancelRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Task_CancelRequest create() => Task_CancelRequest._();
  Task_CancelRequest createEmptyInstance() => create();
  static $pb.PbList<Task_CancelRequest> createRepeated() => $pb.PbList<Task_CancelRequest>();
  @$core.pragma('dart2js:noInline')
  static Task_CancelRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Task_CancelRequest>(create);
  static Task_CancelRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get tasks => $_getList(0);
}

class Task_CancelResponse extends $pb.GeneratedMessage {
  factory Task_CancelResponse() => create();
  Task_CancelResponse._() : super();
  factory Task_CancelResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Task_CancelResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Task.CancelResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.base'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Task_CancelResponse clone() => Task_CancelResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Task_CancelResponse copyWith(void Function(Task_CancelResponse) updates) => super.copyWith((message) => updates(message as Task_CancelResponse)) as Task_CancelResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Task_CancelResponse create() => Task_CancelResponse._();
  Task_CancelResponse createEmptyInstance() => create();
  static $pb.PbList<Task_CancelResponse> createRepeated() => $pb.PbList<Task_CancelResponse>();
  @$core.pragma('dart2js:noInline')
  static Task_CancelResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Task_CancelResponse>(create);
  static Task_CancelResponse? _defaultInstance;
}

class Task_RemoveRequest extends $pb.GeneratedMessage {
  factory Task_RemoveRequest({
    $core.Iterable<$core.String>? tasks,
  }) {
    final $result = create();
    if (tasks != null) {
      $result.tasks.addAll(tasks);
    }
    return $result;
  }
  Task_RemoveRequest._() : super();
  factory Task_RemoveRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Task_RemoveRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Task.RemoveRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.base'), createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'tasks')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Task_RemoveRequest clone() => Task_RemoveRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Task_RemoveRequest copyWith(void Function(Task_RemoveRequest) updates) => super.copyWith((message) => updates(message as Task_RemoveRequest)) as Task_RemoveRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Task_RemoveRequest create() => Task_RemoveRequest._();
  Task_RemoveRequest createEmptyInstance() => create();
  static $pb.PbList<Task_RemoveRequest> createRepeated() => $pb.PbList<Task_RemoveRequest>();
  @$core.pragma('dart2js:noInline')
  static Task_RemoveRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Task_RemoveRequest>(create);
  static Task_RemoveRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get tasks => $_getList(0);
}

class Task_RemoveResponse extends $pb.GeneratedMessage {
  factory Task_RemoveResponse() => create();
  Task_RemoveResponse._() : super();
  factory Task_RemoveResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Task_RemoveResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Task.RemoveResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.base'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Task_RemoveResponse clone() => Task_RemoveResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Task_RemoveResponse copyWith(void Function(Task_RemoveResponse) updates) => super.copyWith((message) => updates(message as Task_RemoveResponse)) as Task_RemoveResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Task_RemoveResponse create() => Task_RemoveResponse._();
  Task_RemoveResponse createEmptyInstance() => create();
  static $pb.PbList<Task_RemoveResponse> createRepeated() => $pb.PbList<Task_RemoveResponse>();
  @$core.pragma('dart2js:noInline')
  static Task_RemoveResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Task_RemoveResponse>(create);
  static Task_RemoveResponse? _defaultInstance;
}

class Task extends $pb.GeneratedMessage {
  factory Task({
    $core.String? id,
    $4.Timestamp? startTime,
    $4.Timestamp? endTime,
    $core.String? name,
    TaskState? state,
    $core.double? progress,
    $core.String? progressState,
    $core.String? log,
    $core.String? err,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (startTime != null) {
      $result.startTime = startTime;
    }
    if (endTime != null) {
      $result.endTime = endTime;
    }
    if (name != null) {
      $result.name = name;
    }
    if (state != null) {
      $result.state = state;
    }
    if (progress != null) {
      $result.progress = progress;
    }
    if (progressState != null) {
      $result.progressState = progressState;
    }
    if (log != null) {
      $result.log = log;
    }
    if (err != null) {
      $result.err = err;
    }
    return $result;
  }
  Task._() : super();
  factory Task.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Task.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Task', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.base'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOM<$4.Timestamp>(2, _omitFieldNames ? '' : 'startTime', subBuilder: $4.Timestamp.create)
    ..aOM<$4.Timestamp>(3, _omitFieldNames ? '' : 'endTime', subBuilder: $4.Timestamp.create)
    ..aOS(4, _omitFieldNames ? '' : 'name')
    ..e<TaskState>(5, _omitFieldNames ? '' : 'state', $pb.PbFieldType.OE, defaultOrMaker: TaskState.TASK_STATE_UNSPECIFIED, valueOf: TaskState.valueOf, enumValues: TaskState.values)
    ..a<$core.double>(6, _omitFieldNames ? '' : 'progress', $pb.PbFieldType.OD)
    ..aOS(7, _omitFieldNames ? '' : 'progressState')
    ..aOS(8, _omitFieldNames ? '' : 'log')
    ..aOS(9, _omitFieldNames ? '' : 'err')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Task clone() => Task()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Task copyWith(void Function(Task) updates) => super.copyWith((message) => updates(message as Task)) as Task;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Task create() => Task._();
  Task createEmptyInstance() => create();
  static $pb.PbList<Task> createRepeated() => $pb.PbList<Task>();
  @$core.pragma('dart2js:noInline')
  static Task getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Task>(create);
  static Task? _defaultInstance;

  /// @gotags: gorm:"not null;unique"
  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  /// @gotags: gorm:"serializer:protobuf_timestamp;type:datetime"
  @$pb.TagNumber(2)
  $4.Timestamp get startTime => $_getN(1);
  @$pb.TagNumber(2)
  set startTime($4.Timestamp v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasStartTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearStartTime() => clearField(2);
  @$pb.TagNumber(2)
  $4.Timestamp ensureStartTime() => $_ensure(1);

  /// @gotags: gorm:"serializer:protobuf_timestamp;type:datetime"
  @$pb.TagNumber(3)
  $4.Timestamp get endTime => $_getN(2);
  @$pb.TagNumber(3)
  set endTime($4.Timestamp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasEndTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearEndTime() => clearField(3);
  @$pb.TagNumber(3)
  $4.Timestamp ensureEndTime() => $_ensure(2);

  /// @gotags: gorm:"not null;"
  @$pb.TagNumber(4)
  $core.String get name => $_getSZ(3);
  @$pb.TagNumber(4)
  set name($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasName() => $_has(3);
  @$pb.TagNumber(4)
  void clearName() => clearField(4);

  @$pb.TagNumber(5)
  TaskState get state => $_getN(4);
  @$pb.TagNumber(5)
  set state(TaskState v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasState() => $_has(4);
  @$pb.TagNumber(5)
  void clearState() => clearField(5);

  @$pb.TagNumber(6)
  $core.double get progress => $_getN(5);
  @$pb.TagNumber(6)
  set progress($core.double v) { $_setDouble(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasProgress() => $_has(5);
  @$pb.TagNumber(6)
  void clearProgress() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get progressState => $_getSZ(6);
  @$pb.TagNumber(7)
  set progressState($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasProgressState() => $_has(6);
  @$pb.TagNumber(7)
  void clearProgressState() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get log => $_getSZ(7);
  @$pb.TagNumber(8)
  set log($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasLog() => $_has(7);
  @$pb.TagNumber(8)
  void clearLog() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get err => $_getSZ(8);
  @$pb.TagNumber(9)
  set err($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasErr() => $_has(8);
  @$pb.TagNumber(9)
  void clearErr() => clearField(9);
}

class PersistTask_ListRequest extends $pb.GeneratedMessage {
  factory PersistTask_ListRequest({
    $core.Map<$core.String, $core.String>? filter,
  }) {
    final $result = create();
    if (filter != null) {
      $result.filter.addAll(filter);
    }
    return $result;
  }
  PersistTask_ListRequest._() : super();
  factory PersistTask_ListRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PersistTask_ListRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PersistTask.ListRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.base'), createEmptyInstance: create)
    ..m<$core.String, $core.String>(1, _omitFieldNames ? '' : 'filter', entryClassName: 'PersistTask.ListRequest.FilterEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('api.base'))
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PersistTask_ListRequest clone() => PersistTask_ListRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PersistTask_ListRequest copyWith(void Function(PersistTask_ListRequest) updates) => super.copyWith((message) => updates(message as PersistTask_ListRequest)) as PersistTask_ListRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PersistTask_ListRequest create() => PersistTask_ListRequest._();
  PersistTask_ListRequest createEmptyInstance() => create();
  static $pb.PbList<PersistTask_ListRequest> createRepeated() => $pb.PbList<PersistTask_ListRequest>();
  @$core.pragma('dart2js:noInline')
  static PersistTask_ListRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PersistTask_ListRequest>(create);
  static PersistTask_ListRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.Map<$core.String, $core.String> get filter => $_getMap(0);
}

class PersistTask_ListResponse extends $pb.GeneratedMessage {
  factory PersistTask_ListResponse({
    $core.Iterable<PersistTask>? results,
  }) {
    final $result = create();
    if (results != null) {
      $result.results.addAll(results);
    }
    return $result;
  }
  PersistTask_ListResponse._() : super();
  factory PersistTask_ListResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PersistTask_ListResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PersistTask.ListResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.base'), createEmptyInstance: create)
    ..pc<PersistTask>(1, _omitFieldNames ? '' : 'results', $pb.PbFieldType.PM, subBuilder: PersistTask.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PersistTask_ListResponse clone() => PersistTask_ListResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PersistTask_ListResponse copyWith(void Function(PersistTask_ListResponse) updates) => super.copyWith((message) => updates(message as PersistTask_ListResponse)) as PersistTask_ListResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PersistTask_ListResponse create() => PersistTask_ListResponse._();
  PersistTask_ListResponse createEmptyInstance() => create();
  static $pb.PbList<PersistTask_ListResponse> createRepeated() => $pb.PbList<PersistTask_ListResponse>();
  @$core.pragma('dart2js:noInline')
  static PersistTask_ListResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PersistTask_ListResponse>(create);
  static PersistTask_ListResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<PersistTask> get results => $_getList(0);
}

class PersistTask_CreateRequest extends $pb.GeneratedMessage {
  factory PersistTask_CreateRequest({
    PersistTask? payload,
  }) {
    final $result = create();
    if (payload != null) {
      $result.payload = payload;
    }
    return $result;
  }
  PersistTask_CreateRequest._() : super();
  factory PersistTask_CreateRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PersistTask_CreateRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PersistTask.CreateRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.base'), createEmptyInstance: create)
    ..aOM<PersistTask>(1, _omitFieldNames ? '' : 'payload', subBuilder: PersistTask.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PersistTask_CreateRequest clone() => PersistTask_CreateRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PersistTask_CreateRequest copyWith(void Function(PersistTask_CreateRequest) updates) => super.copyWith((message) => updates(message as PersistTask_CreateRequest)) as PersistTask_CreateRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PersistTask_CreateRequest create() => PersistTask_CreateRequest._();
  PersistTask_CreateRequest createEmptyInstance() => create();
  static $pb.PbList<PersistTask_CreateRequest> createRepeated() => $pb.PbList<PersistTask_CreateRequest>();
  @$core.pragma('dart2js:noInline')
  static PersistTask_CreateRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PersistTask_CreateRequest>(create);
  static PersistTask_CreateRequest? _defaultInstance;

  @$pb.TagNumber(1)
  PersistTask get payload => $_getN(0);
  @$pb.TagNumber(1)
  set payload(PersistTask v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPayload() => $_has(0);
  @$pb.TagNumber(1)
  void clearPayload() => clearField(1);
  @$pb.TagNumber(1)
  PersistTask ensurePayload() => $_ensure(0);
}

class PersistTask_CreateResponse extends $pb.GeneratedMessage {
  factory PersistTask_CreateResponse({
    PersistTask? result,
  }) {
    final $result = create();
    if (result != null) {
      $result.result = result;
    }
    return $result;
  }
  PersistTask_CreateResponse._() : super();
  factory PersistTask_CreateResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PersistTask_CreateResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PersistTask.CreateResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.base'), createEmptyInstance: create)
    ..aOM<PersistTask>(1, _omitFieldNames ? '' : 'result', subBuilder: PersistTask.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PersistTask_CreateResponse clone() => PersistTask_CreateResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PersistTask_CreateResponse copyWith(void Function(PersistTask_CreateResponse) updates) => super.copyWith((message) => updates(message as PersistTask_CreateResponse)) as PersistTask_CreateResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PersistTask_CreateResponse create() => PersistTask_CreateResponse._();
  PersistTask_CreateResponse createEmptyInstance() => create();
  static $pb.PbList<PersistTask_CreateResponse> createRepeated() => $pb.PbList<PersistTask_CreateResponse>();
  @$core.pragma('dart2js:noInline')
  static PersistTask_CreateResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PersistTask_CreateResponse>(create);
  static PersistTask_CreateResponse? _defaultInstance;

  @$pb.TagNumber(1)
  PersistTask get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(PersistTask v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  PersistTask ensureResult() => $_ensure(0);
}

class PersistTask_UpdateRequest extends $pb.GeneratedMessage {
  factory PersistTask_UpdateRequest({
    PersistTask? payload,
  }) {
    final $result = create();
    if (payload != null) {
      $result.payload = payload;
    }
    return $result;
  }
  PersistTask_UpdateRequest._() : super();
  factory PersistTask_UpdateRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PersistTask_UpdateRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PersistTask.UpdateRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.base'), createEmptyInstance: create)
    ..aOM<PersistTask>(1, _omitFieldNames ? '' : 'payload', subBuilder: PersistTask.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PersistTask_UpdateRequest clone() => PersistTask_UpdateRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PersistTask_UpdateRequest copyWith(void Function(PersistTask_UpdateRequest) updates) => super.copyWith((message) => updates(message as PersistTask_UpdateRequest)) as PersistTask_UpdateRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PersistTask_UpdateRequest create() => PersistTask_UpdateRequest._();
  PersistTask_UpdateRequest createEmptyInstance() => create();
  static $pb.PbList<PersistTask_UpdateRequest> createRepeated() => $pb.PbList<PersistTask_UpdateRequest>();
  @$core.pragma('dart2js:noInline')
  static PersistTask_UpdateRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PersistTask_UpdateRequest>(create);
  static PersistTask_UpdateRequest? _defaultInstance;

  @$pb.TagNumber(1)
  PersistTask get payload => $_getN(0);
  @$pb.TagNumber(1)
  set payload(PersistTask v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPayload() => $_has(0);
  @$pb.TagNumber(1)
  void clearPayload() => clearField(1);
  @$pb.TagNumber(1)
  PersistTask ensurePayload() => $_ensure(0);
}

class PersistTask_UpdateResponse extends $pb.GeneratedMessage {
  factory PersistTask_UpdateResponse({
    PersistTask? result,
  }) {
    final $result = create();
    if (result != null) {
      $result.result = result;
    }
    return $result;
  }
  PersistTask_UpdateResponse._() : super();
  factory PersistTask_UpdateResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PersistTask_UpdateResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PersistTask.UpdateResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.base'), createEmptyInstance: create)
    ..aOM<PersistTask>(1, _omitFieldNames ? '' : 'result', subBuilder: PersistTask.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PersistTask_UpdateResponse clone() => PersistTask_UpdateResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PersistTask_UpdateResponse copyWith(void Function(PersistTask_UpdateResponse) updates) => super.copyWith((message) => updates(message as PersistTask_UpdateResponse)) as PersistTask_UpdateResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PersistTask_UpdateResponse create() => PersistTask_UpdateResponse._();
  PersistTask_UpdateResponse createEmptyInstance() => create();
  static $pb.PbList<PersistTask_UpdateResponse> createRepeated() => $pb.PbList<PersistTask_UpdateResponse>();
  @$core.pragma('dart2js:noInline')
  static PersistTask_UpdateResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PersistTask_UpdateResponse>(create);
  static PersistTask_UpdateResponse? _defaultInstance;

  @$pb.TagNumber(1)
  PersistTask get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(PersistTask v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  PersistTask ensureResult() => $_ensure(0);
}

class PersistTask_DeleteRequest extends $pb.GeneratedMessage {
  factory PersistTask_DeleteRequest({
    $core.int? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  PersistTask_DeleteRequest._() : super();
  factory PersistTask_DeleteRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PersistTask_DeleteRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PersistTask.DeleteRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.base'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PersistTask_DeleteRequest clone() => PersistTask_DeleteRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PersistTask_DeleteRequest copyWith(void Function(PersistTask_DeleteRequest) updates) => super.copyWith((message) => updates(message as PersistTask_DeleteRequest)) as PersistTask_DeleteRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PersistTask_DeleteRequest create() => PersistTask_DeleteRequest._();
  PersistTask_DeleteRequest createEmptyInstance() => create();
  static $pb.PbList<PersistTask_DeleteRequest> createRepeated() => $pb.PbList<PersistTask_DeleteRequest>();
  @$core.pragma('dart2js:noInline')
  static PersistTask_DeleteRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PersistTask_DeleteRequest>(create);
  static PersistTask_DeleteRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class PersistTask_DeleteResponse extends $pb.GeneratedMessage {
  factory PersistTask_DeleteResponse() => create();
  PersistTask_DeleteResponse._() : super();
  factory PersistTask_DeleteResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PersistTask_DeleteResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PersistTask.DeleteResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.base'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PersistTask_DeleteResponse clone() => PersistTask_DeleteResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PersistTask_DeleteResponse copyWith(void Function(PersistTask_DeleteResponse) updates) => super.copyWith((message) => updates(message as PersistTask_DeleteResponse)) as PersistTask_DeleteResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PersistTask_DeleteResponse create() => PersistTask_DeleteResponse._();
  PersistTask_DeleteResponse createEmptyInstance() => create();
  static $pb.PbList<PersistTask_DeleteResponse> createRepeated() => $pb.PbList<PersistTask_DeleteResponse>();
  @$core.pragma('dart2js:noInline')
  static PersistTask_DeleteResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PersistTask_DeleteResponse>(create);
  static PersistTask_DeleteResponse? _defaultInstance;
}

class PersistTask_TestRequest extends $pb.GeneratedMessage {
  factory PersistTask_TestRequest({
    PersistTask? payload,
  }) {
    final $result = create();
    if (payload != null) {
      $result.payload = payload;
    }
    return $result;
  }
  PersistTask_TestRequest._() : super();
  factory PersistTask_TestRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PersistTask_TestRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PersistTask.TestRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.base'), createEmptyInstance: create)
    ..aOM<PersistTask>(1, _omitFieldNames ? '' : 'payload', subBuilder: PersistTask.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PersistTask_TestRequest clone() => PersistTask_TestRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PersistTask_TestRequest copyWith(void Function(PersistTask_TestRequest) updates) => super.copyWith((message) => updates(message as PersistTask_TestRequest)) as PersistTask_TestRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PersistTask_TestRequest create() => PersistTask_TestRequest._();
  PersistTask_TestRequest createEmptyInstance() => create();
  static $pb.PbList<PersistTask_TestRequest> createRepeated() => $pb.PbList<PersistTask_TestRequest>();
  @$core.pragma('dart2js:noInline')
  static PersistTask_TestRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PersistTask_TestRequest>(create);
  static PersistTask_TestRequest? _defaultInstance;

  @$pb.TagNumber(1)
  PersistTask get payload => $_getN(0);
  @$pb.TagNumber(1)
  set payload(PersistTask v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPayload() => $_has(0);
  @$pb.TagNumber(1)
  void clearPayload() => clearField(1);
  @$pb.TagNumber(1)
  PersistTask ensurePayload() => $_ensure(0);
}

class PersistTask_TestResponse extends $pb.GeneratedMessage {
  factory PersistTask_TestResponse() => create();
  PersistTask_TestResponse._() : super();
  factory PersistTask_TestResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PersistTask_TestResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PersistTask.TestResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.base'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PersistTask_TestResponse clone() => PersistTask_TestResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PersistTask_TestResponse copyWith(void Function(PersistTask_TestResponse) updates) => super.copyWith((message) => updates(message as PersistTask_TestResponse)) as PersistTask_TestResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PersistTask_TestResponse create() => PersistTask_TestResponse._();
  PersistTask_TestResponse createEmptyInstance() => create();
  static $pb.PbList<PersistTask_TestResponse> createRepeated() => $pb.PbList<PersistTask_TestResponse>();
  @$core.pragma('dart2js:noInline')
  static PersistTask_TestResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PersistTask_TestResponse>(create);
  static PersistTask_TestResponse? _defaultInstance;
}

class PersistTask_ExecuteRequest extends $pb.GeneratedMessage {
  factory PersistTask_ExecuteRequest({
    $core.int? id,
    $core.bool? dryRun,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (dryRun != null) {
      $result.dryRun = dryRun;
    }
    return $result;
  }
  PersistTask_ExecuteRequest._() : super();
  factory PersistTask_ExecuteRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PersistTask_ExecuteRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PersistTask.ExecuteRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.base'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOB(2, _omitFieldNames ? '' : 'dryRun')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PersistTask_ExecuteRequest clone() => PersistTask_ExecuteRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PersistTask_ExecuteRequest copyWith(void Function(PersistTask_ExecuteRequest) updates) => super.copyWith((message) => updates(message as PersistTask_ExecuteRequest)) as PersistTask_ExecuteRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PersistTask_ExecuteRequest create() => PersistTask_ExecuteRequest._();
  PersistTask_ExecuteRequest createEmptyInstance() => create();
  static $pb.PbList<PersistTask_ExecuteRequest> createRepeated() => $pb.PbList<PersistTask_ExecuteRequest>();
  @$core.pragma('dart2js:noInline')
  static PersistTask_ExecuteRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PersistTask_ExecuteRequest>(create);
  static PersistTask_ExecuteRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get dryRun => $_getBF(1);
  @$pb.TagNumber(2)
  set dryRun($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDryRun() => $_has(1);
  @$pb.TagNumber(2)
  void clearDryRun() => clearField(2);
}

class PersistTask_ExecuteResponse extends $pb.GeneratedMessage {
  factory PersistTask_ExecuteResponse() => create();
  PersistTask_ExecuteResponse._() : super();
  factory PersistTask_ExecuteResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PersistTask_ExecuteResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PersistTask.ExecuteResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.base'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PersistTask_ExecuteResponse clone() => PersistTask_ExecuteResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PersistTask_ExecuteResponse copyWith(void Function(PersistTask_ExecuteResponse) updates) => super.copyWith((message) => updates(message as PersistTask_ExecuteResponse)) as PersistTask_ExecuteResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PersistTask_ExecuteResponse create() => PersistTask_ExecuteResponse._();
  PersistTask_ExecuteResponse createEmptyInstance() => create();
  static $pb.PbList<PersistTask_ExecuteResponse> createRepeated() => $pb.PbList<PersistTask_ExecuteResponse>();
  @$core.pragma('dart2js:noInline')
  static PersistTask_ExecuteResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PersistTask_ExecuteResponse>(create);
  static PersistTask_ExecuteResponse? _defaultInstance;
}

class PersistTask extends $pb.GeneratedMessage {
  factory PersistTask({
    $core.int? id,
    $4.Timestamp? createdAt,
    $4.Timestamp? updatedAt,
    $core.String? name,
    $core.bool? status,
    $core.String? type,
    $core.String? option,
    $core.String? cronOption,
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
    if (status != null) {
      $result.status = status;
    }
    if (type != null) {
      $result.type = type;
    }
    if (option != null) {
      $result.option = option;
    }
    if (cronOption != null) {
      $result.cronOption = cronOption;
    }
    return $result;
  }
  PersistTask._() : super();
  factory PersistTask.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PersistTask.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PersistTask', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.base'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOM<$4.Timestamp>(2, _omitFieldNames ? '' : 'createdAt', subBuilder: $4.Timestamp.create)
    ..aOM<$4.Timestamp>(3, _omitFieldNames ? '' : 'updatedAt', subBuilder: $4.Timestamp.create)
    ..aOS(4, _omitFieldNames ? '' : 'name')
    ..aOB(5, _omitFieldNames ? '' : 'status')
    ..aOS(6, _omitFieldNames ? '' : 'type')
    ..aOS(7, _omitFieldNames ? '' : 'option')
    ..aOS(8, _omitFieldNames ? '' : 'cronOption')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PersistTask clone() => PersistTask()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PersistTask copyWith(void Function(PersistTask) updates) => super.copyWith((message) => updates(message as PersistTask)) as PersistTask;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PersistTask create() => PersistTask._();
  PersistTask createEmptyInstance() => create();
  static $pb.PbList<PersistTask> createRepeated() => $pb.PbList<PersistTask>();
  @$core.pragma('dart2js:noInline')
  static PersistTask getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PersistTask>(create);
  static PersistTask? _defaultInstance;

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
  $core.bool get status => $_getBF(4);
  @$pb.TagNumber(5)
  set status($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasStatus() => $_has(4);
  @$pb.TagNumber(5)
  void clearStatus() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get type => $_getSZ(5);
  @$pb.TagNumber(6)
  set type($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasType() => $_has(5);
  @$pb.TagNumber(6)
  void clearType() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get option => $_getSZ(6);
  @$pb.TagNumber(7)
  set option($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasOption() => $_has(6);
  @$pb.TagNumber(7)
  void clearOption() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get cronOption => $_getSZ(7);
  @$pb.TagNumber(8)
  set cronOption($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasCronOption() => $_has(7);
  @$pb.TagNumber(8)
  void clearCronOption() => clearField(8);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
