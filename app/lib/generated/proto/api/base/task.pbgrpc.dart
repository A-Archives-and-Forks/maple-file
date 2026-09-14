//
//  Generated code. Do not modify.
//  source: api/base/task.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'task.pb.dart' as $2;

export 'task.pb.dart';

@$pb.GrpcServiceName('api.base.TaskService')
class TaskServiceClient extends $grpc.Client {
  static final _$listTasks = $grpc.ClientMethod<$2.Task_ListRequest, $2.Task_ListResponse>(
      '/api.base.TaskService/ListTasks',
      ($2.Task_ListRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.Task_ListResponse.fromBuffer(value));
  static final _$retryTask = $grpc.ClientMethod<$2.Task_RetryRequest, $2.Task_RetryResponse>(
      '/api.base.TaskService/RetryTask',
      ($2.Task_RetryRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.Task_RetryResponse.fromBuffer(value));
  static final _$cancelTask = $grpc.ClientMethod<$2.Task_CancelRequest, $2.Task_CancelResponse>(
      '/api.base.TaskService/CancelTask',
      ($2.Task_CancelRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.Task_CancelResponse.fromBuffer(value));
  static final _$removeTask = $grpc.ClientMethod<$2.Task_RemoveRequest, $2.Task_RemoveResponse>(
      '/api.base.TaskService/RemoveTask',
      ($2.Task_RemoveRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.Task_RemoveResponse.fromBuffer(value));
  static final _$listPersistTasks = $grpc.ClientMethod<$2.PersistTask_ListRequest, $2.PersistTask_ListResponse>(
      '/api.base.TaskService/ListPersistTasks',
      ($2.PersistTask_ListRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.PersistTask_ListResponse.fromBuffer(value));
  static final _$createPersistTask = $grpc.ClientMethod<$2.PersistTask_CreateRequest, $2.PersistTask_CreateResponse>(
      '/api.base.TaskService/CreatePersistTask',
      ($2.PersistTask_CreateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.PersistTask_CreateResponse.fromBuffer(value));
  static final _$updatePersistTask = $grpc.ClientMethod<$2.PersistTask_UpdateRequest, $2.PersistTask_UpdateResponse>(
      '/api.base.TaskService/UpdatePersistTask',
      ($2.PersistTask_UpdateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.PersistTask_UpdateResponse.fromBuffer(value));
  static final _$deletePersistTask = $grpc.ClientMethod<$2.PersistTask_DeleteRequest, $2.PersistTask_DeleteResponse>(
      '/api.base.TaskService/DeletePersistTask',
      ($2.PersistTask_DeleteRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.PersistTask_DeleteResponse.fromBuffer(value));
  static final _$testPersistTask = $grpc.ClientMethod<$2.PersistTask_TestRequest, $2.PersistTask_TestResponse>(
      '/api.base.TaskService/TestPersistTask',
      ($2.PersistTask_TestRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.PersistTask_TestResponse.fromBuffer(value));
  static final _$executePersistTask = $grpc.ClientMethod<$2.PersistTask_ExecuteRequest, $2.PersistTask_ExecuteResponse>(
      '/api.base.TaskService/ExecutePersistTask',
      ($2.PersistTask_ExecuteRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.PersistTask_ExecuteResponse.fromBuffer(value));

  TaskServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$2.Task_ListResponse> listTasks($2.Task_ListRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listTasks, request, options: options);
  }

  $grpc.ResponseFuture<$2.Task_RetryResponse> retryTask($2.Task_RetryRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$retryTask, request, options: options);
  }

  $grpc.ResponseFuture<$2.Task_CancelResponse> cancelTask($2.Task_CancelRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$cancelTask, request, options: options);
  }

  $grpc.ResponseFuture<$2.Task_RemoveResponse> removeTask($2.Task_RemoveRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$removeTask, request, options: options);
  }

  $grpc.ResponseFuture<$2.PersistTask_ListResponse> listPersistTasks($2.PersistTask_ListRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listPersistTasks, request, options: options);
  }

  $grpc.ResponseFuture<$2.PersistTask_CreateResponse> createPersistTask($2.PersistTask_CreateRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createPersistTask, request, options: options);
  }

  $grpc.ResponseFuture<$2.PersistTask_UpdateResponse> updatePersistTask($2.PersistTask_UpdateRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updatePersistTask, request, options: options);
  }

  $grpc.ResponseFuture<$2.PersistTask_DeleteResponse> deletePersistTask($2.PersistTask_DeleteRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deletePersistTask, request, options: options);
  }

  $grpc.ResponseFuture<$2.PersistTask_TestResponse> testPersistTask($2.PersistTask_TestRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$testPersistTask, request, options: options);
  }

  $grpc.ResponseFuture<$2.PersistTask_ExecuteResponse> executePersistTask($2.PersistTask_ExecuteRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$executePersistTask, request, options: options);
  }
}

@$pb.GrpcServiceName('api.base.TaskService')
abstract class TaskServiceBase extends $grpc.Service {
  $core.String get $name => 'api.base.TaskService';

  TaskServiceBase() {
    $addMethod($grpc.ServiceMethod<$2.Task_ListRequest, $2.Task_ListResponse>(
        'ListTasks',
        listTasks_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.Task_ListRequest.fromBuffer(value),
        ($2.Task_ListResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.Task_RetryRequest, $2.Task_RetryResponse>(
        'RetryTask',
        retryTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.Task_RetryRequest.fromBuffer(value),
        ($2.Task_RetryResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.Task_CancelRequest, $2.Task_CancelResponse>(
        'CancelTask',
        cancelTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.Task_CancelRequest.fromBuffer(value),
        ($2.Task_CancelResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.Task_RemoveRequest, $2.Task_RemoveResponse>(
        'RemoveTask',
        removeTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.Task_RemoveRequest.fromBuffer(value),
        ($2.Task_RemoveResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.PersistTask_ListRequest, $2.PersistTask_ListResponse>(
        'ListPersistTasks',
        listPersistTasks_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.PersistTask_ListRequest.fromBuffer(value),
        ($2.PersistTask_ListResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.PersistTask_CreateRequest, $2.PersistTask_CreateResponse>(
        'CreatePersistTask',
        createPersistTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.PersistTask_CreateRequest.fromBuffer(value),
        ($2.PersistTask_CreateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.PersistTask_UpdateRequest, $2.PersistTask_UpdateResponse>(
        'UpdatePersistTask',
        updatePersistTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.PersistTask_UpdateRequest.fromBuffer(value),
        ($2.PersistTask_UpdateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.PersistTask_DeleteRequest, $2.PersistTask_DeleteResponse>(
        'DeletePersistTask',
        deletePersistTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.PersistTask_DeleteRequest.fromBuffer(value),
        ($2.PersistTask_DeleteResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.PersistTask_TestRequest, $2.PersistTask_TestResponse>(
        'TestPersistTask',
        testPersistTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.PersistTask_TestRequest.fromBuffer(value),
        ($2.PersistTask_TestResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.PersistTask_ExecuteRequest, $2.PersistTask_ExecuteResponse>(
        'ExecutePersistTask',
        executePersistTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.PersistTask_ExecuteRequest.fromBuffer(value),
        ($2.PersistTask_ExecuteResponse value) => value.writeToBuffer()));
  }

  $async.Future<$2.Task_ListResponse> listTasks_Pre($grpc.ServiceCall call, $async.Future<$2.Task_ListRequest> request) async {
    return listTasks(call, await request);
  }

  $async.Future<$2.Task_RetryResponse> retryTask_Pre($grpc.ServiceCall call, $async.Future<$2.Task_RetryRequest> request) async {
    return retryTask(call, await request);
  }

  $async.Future<$2.Task_CancelResponse> cancelTask_Pre($grpc.ServiceCall call, $async.Future<$2.Task_CancelRequest> request) async {
    return cancelTask(call, await request);
  }

  $async.Future<$2.Task_RemoveResponse> removeTask_Pre($grpc.ServiceCall call, $async.Future<$2.Task_RemoveRequest> request) async {
    return removeTask(call, await request);
  }

  $async.Future<$2.PersistTask_ListResponse> listPersistTasks_Pre($grpc.ServiceCall call, $async.Future<$2.PersistTask_ListRequest> request) async {
    return listPersistTasks(call, await request);
  }

  $async.Future<$2.PersistTask_CreateResponse> createPersistTask_Pre($grpc.ServiceCall call, $async.Future<$2.PersistTask_CreateRequest> request) async {
    return createPersistTask(call, await request);
  }

  $async.Future<$2.PersistTask_UpdateResponse> updatePersistTask_Pre($grpc.ServiceCall call, $async.Future<$2.PersistTask_UpdateRequest> request) async {
    return updatePersistTask(call, await request);
  }

  $async.Future<$2.PersistTask_DeleteResponse> deletePersistTask_Pre($grpc.ServiceCall call, $async.Future<$2.PersistTask_DeleteRequest> request) async {
    return deletePersistTask(call, await request);
  }

  $async.Future<$2.PersistTask_TestResponse> testPersistTask_Pre($grpc.ServiceCall call, $async.Future<$2.PersistTask_TestRequest> request) async {
    return testPersistTask(call, await request);
  }

  $async.Future<$2.PersistTask_ExecuteResponse> executePersistTask_Pre($grpc.ServiceCall call, $async.Future<$2.PersistTask_ExecuteRequest> request) async {
    return executePersistTask(call, await request);
  }

  $async.Future<$2.Task_ListResponse> listTasks($grpc.ServiceCall call, $2.Task_ListRequest request);
  $async.Future<$2.Task_RetryResponse> retryTask($grpc.ServiceCall call, $2.Task_RetryRequest request);
  $async.Future<$2.Task_CancelResponse> cancelTask($grpc.ServiceCall call, $2.Task_CancelRequest request);
  $async.Future<$2.Task_RemoveResponse> removeTask($grpc.ServiceCall call, $2.Task_RemoveRequest request);
  $async.Future<$2.PersistTask_ListResponse> listPersistTasks($grpc.ServiceCall call, $2.PersistTask_ListRequest request);
  $async.Future<$2.PersistTask_CreateResponse> createPersistTask($grpc.ServiceCall call, $2.PersistTask_CreateRequest request);
  $async.Future<$2.PersistTask_UpdateResponse> updatePersistTask($grpc.ServiceCall call, $2.PersistTask_UpdateRequest request);
  $async.Future<$2.PersistTask_DeleteResponse> deletePersistTask($grpc.ServiceCall call, $2.PersistTask_DeleteRequest request);
  $async.Future<$2.PersistTask_TestResponse> testPersistTask($grpc.ServiceCall call, $2.PersistTask_TestRequest request);
  $async.Future<$2.PersistTask_ExecuteResponse> executePersistTask($grpc.ServiceCall call, $2.PersistTask_ExecuteRequest request);
}
