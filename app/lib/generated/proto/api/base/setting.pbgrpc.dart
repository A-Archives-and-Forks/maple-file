//
//  Generated code. Do not modify.
//  source: api/base/setting.proto
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

import 'setting.pb.dart' as $0;

export 'setting.pb.dart';

@$pb.GrpcServiceName('api.base.SettingService')
class SettingServiceClient extends $grpc.Client {
  static final _$resetSetting = $grpc.ClientMethod<$0.Setting_ResetRequest, $0.Setting_ResetResponse>(
      '/api.base.SettingService/ResetSetting',
      ($0.Setting_ResetRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Setting_ResetResponse.fromBuffer(value));
  static final _$updateSetting = $grpc.ClientMethod<$0.Setting_UpdateRequest, $0.Setting_UpdateResponse>(
      '/api.base.SettingService/UpdateSetting',
      ($0.Setting_UpdateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Setting_UpdateResponse.fromBuffer(value));
  static final _$getSetting = $grpc.ClientMethod<$0.Setting_GetRequest, $0.Setting_GetResponse>(
      '/api.base.SettingService/GetSetting',
      ($0.Setting_GetRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Setting_GetResponse.fromBuffer(value));

  SettingServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.Setting_ResetResponse> resetSetting($0.Setting_ResetRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$resetSetting, request, options: options);
  }

  $grpc.ResponseFuture<$0.Setting_UpdateResponse> updateSetting($0.Setting_UpdateRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSetting, request, options: options);
  }

  $grpc.ResponseFuture<$0.Setting_GetResponse> getSetting($0.Setting_GetRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSetting, request, options: options);
  }
}

@$pb.GrpcServiceName('api.base.SettingService')
abstract class SettingServiceBase extends $grpc.Service {
  $core.String get $name => 'api.base.SettingService';

  SettingServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Setting_ResetRequest, $0.Setting_ResetResponse>(
        'ResetSetting',
        resetSetting_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Setting_ResetRequest.fromBuffer(value),
        ($0.Setting_ResetResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Setting_UpdateRequest, $0.Setting_UpdateResponse>(
        'UpdateSetting',
        updateSetting_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Setting_UpdateRequest.fromBuffer(value),
        ($0.Setting_UpdateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Setting_GetRequest, $0.Setting_GetResponse>(
        'GetSetting',
        getSetting_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Setting_GetRequest.fromBuffer(value),
        ($0.Setting_GetResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.Setting_ResetResponse> resetSetting_Pre($grpc.ServiceCall call, $async.Future<$0.Setting_ResetRequest> request) async {
    return resetSetting(call, await request);
  }

  $async.Future<$0.Setting_UpdateResponse> updateSetting_Pre($grpc.ServiceCall call, $async.Future<$0.Setting_UpdateRequest> request) async {
    return updateSetting(call, await request);
  }

  $async.Future<$0.Setting_GetResponse> getSetting_Pre($grpc.ServiceCall call, $async.Future<$0.Setting_GetRequest> request) async {
    return getSetting(call, await request);
  }

  $async.Future<$0.Setting_ResetResponse> resetSetting($grpc.ServiceCall call, $0.Setting_ResetRequest request);
  $async.Future<$0.Setting_UpdateResponse> updateSetting($grpc.ServiceCall call, $0.Setting_UpdateRequest request);
  $async.Future<$0.Setting_GetResponse> getSetting($grpc.ServiceCall call, $0.Setting_GetRequest request);
}
