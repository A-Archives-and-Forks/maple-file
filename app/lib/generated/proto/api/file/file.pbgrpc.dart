//
//  Generated code. Do not modify.
//  source: api/file/file.proto
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

import 'file.pb.dart' as $1;

export 'file.pb.dart';

@$pb.GrpcServiceName('api.file.FileService')
class FileServiceClient extends $grpc.Client {
  static final _$list = $grpc.ClientMethod<$1.File_ListRequest, $1.File_ListResponse>(
      '/api.file.FileService/List',
      ($1.File_ListRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.File_ListResponse.fromBuffer(value));
  static final _$move = $grpc.ClientMethod<$1.File_MoveRequest, $1.File_MoveResponse>(
      '/api.file.FileService/Move',
      ($1.File_MoveRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.File_MoveResponse.fromBuffer(value));
  static final _$copy = $grpc.ClientMethod<$1.File_CopyRequest, $1.File_CopyResponse>(
      '/api.file.FileService/Copy',
      ($1.File_CopyRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.File_CopyResponse.fromBuffer(value));
  static final _$mkdir = $grpc.ClientMethod<$1.File_MkdirRequest, $1.File_MkdirResponse>(
      '/api.file.FileService/Mkdir',
      ($1.File_MkdirRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.File_MkdirResponse.fromBuffer(value));
  static final _$rename = $grpc.ClientMethod<$1.File_RenameRequest, $1.File_RenameResponse>(
      '/api.file.FileService/Rename',
      ($1.File_RenameRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.File_RenameResponse.fromBuffer(value));
  static final _$remove = $grpc.ClientMethod<$1.File_RemoveRequest, $1.File_RemoveResponse>(
      '/api.file.FileService/Remove',
      ($1.File_RemoveRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.File_RemoveResponse.fromBuffer(value));
  static final _$upload = $grpc.ClientMethod<$1.File_UploadRequest, $1.File_UploadResponse>(
      '/api.file.FileService/Upload',
      ($1.File_UploadRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.File_UploadResponse.fromBuffer(value));
  static final _$download = $grpc.ClientMethod<$1.File_DownloadRequest, $1.File_DownloadResponse>(
      '/api.file.FileService/Download',
      ($1.File_DownloadRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.File_DownloadResponse.fromBuffer(value));
  static final _$preview = $grpc.ClientMethod<$1.File_PreviewRequest, $1.File_PreviewResponse>(
      '/api.file.FileService/Preview',
      ($1.File_PreviewRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.File_PreviewResponse.fromBuffer(value));

  FileServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$1.File_ListResponse> list($1.File_ListRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$list, request, options: options);
  }

  $grpc.ResponseFuture<$1.File_MoveResponse> move($1.File_MoveRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$move, request, options: options);
  }

  $grpc.ResponseFuture<$1.File_CopyResponse> copy($1.File_CopyRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$copy, request, options: options);
  }

  $grpc.ResponseFuture<$1.File_MkdirResponse> mkdir($1.File_MkdirRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$mkdir, request, options: options);
  }

  $grpc.ResponseFuture<$1.File_RenameResponse> rename($1.File_RenameRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$rename, request, options: options);
  }

  $grpc.ResponseFuture<$1.File_RemoveResponse> remove($1.File_RemoveRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$remove, request, options: options);
  }

  $grpc.ResponseFuture<$1.File_UploadResponse> upload($async.Stream<$1.File_UploadRequest> request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$upload, request, options: options).single;
  }

  $grpc.ResponseStream<$1.File_DownloadResponse> download($1.File_DownloadRequest request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$download, $async.Stream.fromIterable([request]), options: options);
  }

  $grpc.ResponseStream<$1.File_PreviewResponse> preview($1.File_PreviewRequest request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$preview, $async.Stream.fromIterable([request]), options: options);
  }
}

@$pb.GrpcServiceName('api.file.FileService')
abstract class FileServiceBase extends $grpc.Service {
  $core.String get $name => 'api.file.FileService';

  FileServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.File_ListRequest, $1.File_ListResponse>(
        'List',
        list_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.File_ListRequest.fromBuffer(value),
        ($1.File_ListResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.File_MoveRequest, $1.File_MoveResponse>(
        'Move',
        move_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.File_MoveRequest.fromBuffer(value),
        ($1.File_MoveResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.File_CopyRequest, $1.File_CopyResponse>(
        'Copy',
        copy_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.File_CopyRequest.fromBuffer(value),
        ($1.File_CopyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.File_MkdirRequest, $1.File_MkdirResponse>(
        'Mkdir',
        mkdir_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.File_MkdirRequest.fromBuffer(value),
        ($1.File_MkdirResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.File_RenameRequest, $1.File_RenameResponse>(
        'Rename',
        rename_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.File_RenameRequest.fromBuffer(value),
        ($1.File_RenameResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.File_RemoveRequest, $1.File_RemoveResponse>(
        'Remove',
        remove_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.File_RemoveRequest.fromBuffer(value),
        ($1.File_RemoveResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.File_UploadRequest, $1.File_UploadResponse>(
        'Upload',
        upload,
        true,
        false,
        ($core.List<$core.int> value) => $1.File_UploadRequest.fromBuffer(value),
        ($1.File_UploadResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.File_DownloadRequest, $1.File_DownloadResponse>(
        'Download',
        download_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $1.File_DownloadRequest.fromBuffer(value),
        ($1.File_DownloadResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.File_PreviewRequest, $1.File_PreviewResponse>(
        'Preview',
        preview_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $1.File_PreviewRequest.fromBuffer(value),
        ($1.File_PreviewResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.File_ListResponse> list_Pre($grpc.ServiceCall call, $async.Future<$1.File_ListRequest> request) async {
    return list(call, await request);
  }

  $async.Future<$1.File_MoveResponse> move_Pre($grpc.ServiceCall call, $async.Future<$1.File_MoveRequest> request) async {
    return move(call, await request);
  }

  $async.Future<$1.File_CopyResponse> copy_Pre($grpc.ServiceCall call, $async.Future<$1.File_CopyRequest> request) async {
    return copy(call, await request);
  }

  $async.Future<$1.File_MkdirResponse> mkdir_Pre($grpc.ServiceCall call, $async.Future<$1.File_MkdirRequest> request) async {
    return mkdir(call, await request);
  }

  $async.Future<$1.File_RenameResponse> rename_Pre($grpc.ServiceCall call, $async.Future<$1.File_RenameRequest> request) async {
    return rename(call, await request);
  }

  $async.Future<$1.File_RemoveResponse> remove_Pre($grpc.ServiceCall call, $async.Future<$1.File_RemoveRequest> request) async {
    return remove(call, await request);
  }

  $async.Stream<$1.File_DownloadResponse> download_Pre($grpc.ServiceCall call, $async.Future<$1.File_DownloadRequest> request) async* {
    yield* download(call, await request);
  }

  $async.Stream<$1.File_PreviewResponse> preview_Pre($grpc.ServiceCall call, $async.Future<$1.File_PreviewRequest> request) async* {
    yield* preview(call, await request);
  }

  $async.Future<$1.File_ListResponse> list($grpc.ServiceCall call, $1.File_ListRequest request);
  $async.Future<$1.File_MoveResponse> move($grpc.ServiceCall call, $1.File_MoveRequest request);
  $async.Future<$1.File_CopyResponse> copy($grpc.ServiceCall call, $1.File_CopyRequest request);
  $async.Future<$1.File_MkdirResponse> mkdir($grpc.ServiceCall call, $1.File_MkdirRequest request);
  $async.Future<$1.File_RenameResponse> rename($grpc.ServiceCall call, $1.File_RenameRequest request);
  $async.Future<$1.File_RemoveResponse> remove($grpc.ServiceCall call, $1.File_RemoveRequest request);
  $async.Future<$1.File_UploadResponse> upload($grpc.ServiceCall call, $async.Stream<$1.File_UploadRequest> request);
  $async.Stream<$1.File_DownloadResponse> download($grpc.ServiceCall call, $1.File_DownloadRequest request);
  $async.Stream<$1.File_PreviewResponse> preview($grpc.ServiceCall call, $1.File_PreviewRequest request);
}
