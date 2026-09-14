//
//  Generated code. Do not modify.
//  source: api/base/system.proto
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

import 'system.pb.dart' as $1;

export 'system.pb.dart';

@$pb.GrpcServiceName('api.base.SystemService')
class SystemServiceClient extends $grpc.Client {
  static final _$info = $grpc.ClientMethod<$1.Info_Request, $1.Info_Response>(
      '/api.base.SystemService/Info',
      ($1.Info_Request value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Info_Response.fromBuffer(value));

  SystemServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$1.Info_Response> info($1.Info_Request request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$info, request, options: options);
  }
}

@$pb.GrpcServiceName('api.base.SystemService')
abstract class SystemServiceBase extends $grpc.Service {
  $core.String get $name => 'api.base.SystemService';

  SystemServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.Info_Request, $1.Info_Response>(
        'Info',
        info_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.Info_Request.fromBuffer(value),
        ($1.Info_Response value) => value.writeToBuffer()));
  }

  $async.Future<$1.Info_Response> info_Pre($grpc.ServiceCall call, $async.Future<$1.Info_Request> request) async {
    return info(call, await request);
  }

  $async.Future<$1.Info_Response> info($grpc.ServiceCall call, $1.Info_Request request);
}
