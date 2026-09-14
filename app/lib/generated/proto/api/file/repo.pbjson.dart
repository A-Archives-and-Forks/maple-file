//
//  Generated code. Do not modify.
//  source: api/file/repo.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use repoDescriptor instead')
const Repo$json = {
  '1': 'Repo',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'created_at', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdAt'},
    {'1': 'updated_at', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'updatedAt'},
    {'1': 'name', '3': 4, '4': 1, '5': 9, '10': 'name'},
    {'1': 'path', '3': 5, '4': 1, '5': 9, '10': 'path'},
    {'1': 'status', '3': 6, '4': 1, '5': 8, '10': 'status'},
    {'1': 'driver', '3': 7, '4': 1, '5': 9, '10': 'driver'},
    {'1': 'option', '3': 8, '4': 1, '5': 9, '10': 'option'},
  ],
  '3': [Repo_ListRequest$json, Repo_ListResponse$json, Repo_CreateRequest$json, Repo_CreateResponse$json, Repo_TestRequest$json, Repo_TestResponse$json, Repo_UpdateRequest$json, Repo_UpdateResponse$json, Repo_DeleteRequest$json, Repo_DeleteResponse$json],
};

@$core.Deprecated('Use repoDescriptor instead')
const Repo_ListRequest$json = {
  '1': 'ListRequest',
  '2': [
    {'1': 'filter', '3': 1, '4': 3, '5': 11, '6': '.api.file.Repo.ListRequest.FilterEntry', '10': 'filter'},
  ],
  '3': [Repo_ListRequest_FilterEntry$json],
};

@$core.Deprecated('Use repoDescriptor instead')
const Repo_ListRequest_FilterEntry$json = {
  '1': 'FilterEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use repoDescriptor instead')
const Repo_ListResponse$json = {
  '1': 'ListResponse',
  '2': [
    {'1': 'results', '3': 1, '4': 3, '5': 11, '6': '.api.file.Repo', '10': 'results'},
  ],
};

@$core.Deprecated('Use repoDescriptor instead')
const Repo_CreateRequest$json = {
  '1': 'CreateRequest',
  '2': [
    {'1': 'payload', '3': 1, '4': 1, '5': 11, '6': '.api.file.Repo', '10': 'payload'},
  ],
};

@$core.Deprecated('Use repoDescriptor instead')
const Repo_CreateResponse$json = {
  '1': 'CreateResponse',
  '2': [
    {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.api.file.Repo', '10': 'result'},
  ],
};

@$core.Deprecated('Use repoDescriptor instead')
const Repo_TestRequest$json = {
  '1': 'TestRequest',
  '2': [
    {'1': 'payload', '3': 1, '4': 1, '5': 11, '6': '.api.file.Repo', '10': 'payload'},
  ],
};

@$core.Deprecated('Use repoDescriptor instead')
const Repo_TestResponse$json = {
  '1': 'TestResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
  ],
};

@$core.Deprecated('Use repoDescriptor instead')
const Repo_UpdateRequest$json = {
  '1': 'UpdateRequest',
  '2': [
    {'1': 'payload', '3': 1, '4': 1, '5': 11, '6': '.api.file.Repo', '10': 'payload'},
  ],
};

@$core.Deprecated('Use repoDescriptor instead')
const Repo_UpdateResponse$json = {
  '1': 'UpdateResponse',
  '2': [
    {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.api.file.Repo', '10': 'result'},
  ],
};

@$core.Deprecated('Use repoDescriptor instead')
const Repo_DeleteRequest$json = {
  '1': 'DeleteRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
  ],
};

@$core.Deprecated('Use repoDescriptor instead')
const Repo_DeleteResponse$json = {
  '1': 'DeleteResponse',
};

/// Descriptor for `Repo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List repoDescriptor = $convert.base64Decode(
    'CgRSZXBvEg4KAmlkGAEgASgFUgJpZBI5CgpjcmVhdGVkX2F0GAIgASgLMhouZ29vZ2xlLnByb3'
    'RvYnVmLlRpbWVzdGFtcFIJY3JlYXRlZEF0EjkKCnVwZGF0ZWRfYXQYAyABKAsyGi5nb29nbGUu'
    'cHJvdG9idWYuVGltZXN0YW1wUgl1cGRhdGVkQXQSEgoEbmFtZRgEIAEoCVIEbmFtZRISCgRwYX'
    'RoGAUgASgJUgRwYXRoEhYKBnN0YXR1cxgGIAEoCFIGc3RhdHVzEhYKBmRyaXZlchgHIAEoCVIG'
    'ZHJpdmVyEhYKBm9wdGlvbhgIIAEoCVIGb3B0aW9uGogBCgtMaXN0UmVxdWVzdBI+CgZmaWx0ZX'
    'IYASADKAsyJi5hcGkuZmlsZS5SZXBvLkxpc3RSZXF1ZXN0LkZpbHRlckVudHJ5UgZmaWx0ZXIa'
    'OQoLRmlsdGVyRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKAlSBXZhbHVlOg'
    'I4ARo4CgxMaXN0UmVzcG9uc2USKAoHcmVzdWx0cxgBIAMoCzIOLmFwaS5maWxlLlJlcG9SB3Jl'
    'c3VsdHMaOQoNQ3JlYXRlUmVxdWVzdBIoCgdwYXlsb2FkGAEgASgLMg4uYXBpLmZpbGUuUmVwb1'
    'IHcGF5bG9hZBo4Cg5DcmVhdGVSZXNwb25zZRImCgZyZXN1bHQYASABKAsyDi5hcGkuZmlsZS5S'
    'ZXBvUgZyZXN1bHQaNwoLVGVzdFJlcXVlc3QSKAoHcGF5bG9hZBgBIAEoCzIOLmFwaS5maWxlLl'
    'JlcG9SB3BheWxvYWQaKAoMVGVzdFJlc3BvbnNlEhgKB3N1Y2Nlc3MYASABKAhSB3N1Y2Nlc3Ma'
    'OQoNVXBkYXRlUmVxdWVzdBIoCgdwYXlsb2FkGAEgASgLMg4uYXBpLmZpbGUuUmVwb1IHcGF5bG'
    '9hZBo4Cg5VcGRhdGVSZXNwb25zZRImCgZyZXN1bHQYASABKAsyDi5hcGkuZmlsZS5SZXBvUgZy'
    'ZXN1bHQaHwoNRGVsZXRlUmVxdWVzdBIOCgJpZBgBIAEoBVICaWQaEAoORGVsZXRlUmVzcG9uc2'
    'U=');

