//
//  Generated code. Do not modify.
//  source: api/file/repo.proto
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

import 'repo.pb.dart' as $0;

export 'repo.pb.dart';

@$pb.GrpcServiceName('api.file.RepoService')
class RepoServiceClient extends $grpc.Client {
  static final _$listRepos = $grpc.ClientMethod<$0.Repo_ListRequest, $0.Repo_ListResponse>(
      '/api.file.RepoService/ListRepos',
      ($0.Repo_ListRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Repo_ListResponse.fromBuffer(value));
  static final _$createRepo = $grpc.ClientMethod<$0.Repo_CreateRequest, $0.Repo_CreateResponse>(
      '/api.file.RepoService/CreateRepo',
      ($0.Repo_CreateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Repo_CreateResponse.fromBuffer(value));
  static final _$updateRepo = $grpc.ClientMethod<$0.Repo_UpdateRequest, $0.Repo_UpdateResponse>(
      '/api.file.RepoService/UpdateRepo',
      ($0.Repo_UpdateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Repo_UpdateResponse.fromBuffer(value));
  static final _$deleteRepo = $grpc.ClientMethod<$0.Repo_DeleteRequest, $0.Repo_DeleteResponse>(
      '/api.file.RepoService/DeleteRepo',
      ($0.Repo_DeleteRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Repo_DeleteResponse.fromBuffer(value));
  static final _$testRepo = $grpc.ClientMethod<$0.Repo_TestRequest, $0.Repo_TestResponse>(
      '/api.file.RepoService/TestRepo',
      ($0.Repo_TestRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Repo_TestResponse.fromBuffer(value));

  RepoServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.Repo_ListResponse> listRepos($0.Repo_ListRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listRepos, request, options: options);
  }

  $grpc.ResponseFuture<$0.Repo_CreateResponse> createRepo($0.Repo_CreateRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createRepo, request, options: options);
  }

  $grpc.ResponseFuture<$0.Repo_UpdateResponse> updateRepo($0.Repo_UpdateRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateRepo, request, options: options);
  }

  $grpc.ResponseFuture<$0.Repo_DeleteResponse> deleteRepo($0.Repo_DeleteRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteRepo, request, options: options);
  }

  $grpc.ResponseFuture<$0.Repo_TestResponse> testRepo($0.Repo_TestRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$testRepo, request, options: options);
  }
}

@$pb.GrpcServiceName('api.file.RepoService')
abstract class RepoServiceBase extends $grpc.Service {
  $core.String get $name => 'api.file.RepoService';

  RepoServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Repo_ListRequest, $0.Repo_ListResponse>(
        'ListRepos',
        listRepos_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Repo_ListRequest.fromBuffer(value),
        ($0.Repo_ListResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Repo_CreateRequest, $0.Repo_CreateResponse>(
        'CreateRepo',
        createRepo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Repo_CreateRequest.fromBuffer(value),
        ($0.Repo_CreateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Repo_UpdateRequest, $0.Repo_UpdateResponse>(
        'UpdateRepo',
        updateRepo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Repo_UpdateRequest.fromBuffer(value),
        ($0.Repo_UpdateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Repo_DeleteRequest, $0.Repo_DeleteResponse>(
        'DeleteRepo',
        deleteRepo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Repo_DeleteRequest.fromBuffer(value),
        ($0.Repo_DeleteResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Repo_TestRequest, $0.Repo_TestResponse>(
        'TestRepo',
        testRepo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Repo_TestRequest.fromBuffer(value),
        ($0.Repo_TestResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.Repo_ListResponse> listRepos_Pre($grpc.ServiceCall call, $async.Future<$0.Repo_ListRequest> request) async {
    return listRepos(call, await request);
  }

  $async.Future<$0.Repo_CreateResponse> createRepo_Pre($grpc.ServiceCall call, $async.Future<$0.Repo_CreateRequest> request) async {
    return createRepo(call, await request);
  }

  $async.Future<$0.Repo_UpdateResponse> updateRepo_Pre($grpc.ServiceCall call, $async.Future<$0.Repo_UpdateRequest> request) async {
    return updateRepo(call, await request);
  }

  $async.Future<$0.Repo_DeleteResponse> deleteRepo_Pre($grpc.ServiceCall call, $async.Future<$0.Repo_DeleteRequest> request) async {
    return deleteRepo(call, await request);
  }

  $async.Future<$0.Repo_TestResponse> testRepo_Pre($grpc.ServiceCall call, $async.Future<$0.Repo_TestRequest> request) async {
    return testRepo(call, await request);
  }

  $async.Future<$0.Repo_ListResponse> listRepos($grpc.ServiceCall call, $0.Repo_ListRequest request);
  $async.Future<$0.Repo_CreateResponse> createRepo($grpc.ServiceCall call, $0.Repo_CreateRequest request);
  $async.Future<$0.Repo_UpdateResponse> updateRepo($grpc.ServiceCall call, $0.Repo_UpdateRequest request);
  $async.Future<$0.Repo_DeleteResponse> deleteRepo($grpc.ServiceCall call, $0.Repo_DeleteRequest request);
  $async.Future<$0.Repo_TestResponse> testRepo($grpc.ServiceCall call, $0.Repo_TestRequest request);
}
