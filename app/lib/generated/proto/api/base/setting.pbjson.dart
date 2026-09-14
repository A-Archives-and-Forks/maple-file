//
//  Generated code. Do not modify.
//  source: api/base/setting.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use settingDescriptor instead')
const Setting$json = {
  '1': 'Setting',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'created_at', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdAt'},
    {'1': 'updated_at', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'updatedAt'},
    {'1': 'key', '3': 4, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 5, '4': 1, '5': 9, '10': 'value'},
  ],
  '3': [Setting_GetRequest$json, Setting_GetResponse$json, Setting_UpdateRequest$json, Setting_UpdateResponse$json, Setting_ResetRequest$json, Setting_ResetResponse$json],
};

@$core.Deprecated('Use settingDescriptor instead')
const Setting_GetRequest$json = {
  '1': 'GetRequest',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
  ],
};

@$core.Deprecated('Use settingDescriptor instead')
const Setting_GetResponse$json = {
  '1': 'GetResponse',
  '2': [
    {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.api.base.Setting', '10': 'result'},
  ],
};

@$core.Deprecated('Use settingDescriptor instead')
const Setting_UpdateRequest$json = {
  '1': 'UpdateRequest',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
};

@$core.Deprecated('Use settingDescriptor instead')
const Setting_UpdateResponse$json = {
  '1': 'UpdateResponse',
  '2': [
    {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.api.base.Setting', '10': 'result'},
  ],
};

@$core.Deprecated('Use settingDescriptor instead')
const Setting_ResetRequest$json = {
  '1': 'ResetRequest',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
  ],
};

@$core.Deprecated('Use settingDescriptor instead')
const Setting_ResetResponse$json = {
  '1': 'ResetResponse',
};

/// Descriptor for `Setting`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List settingDescriptor = $convert.base64Decode(
    'CgdTZXR0aW5nEg4KAmlkGAEgASgFUgJpZBI5CgpjcmVhdGVkX2F0GAIgASgLMhouZ29vZ2xlLn'
    'Byb3RvYnVmLlRpbWVzdGFtcFIJY3JlYXRlZEF0EjkKCnVwZGF0ZWRfYXQYAyABKAsyGi5nb29n'
    'bGUucHJvdG9idWYuVGltZXN0YW1wUgl1cGRhdGVkQXQSEAoDa2V5GAQgASgJUgNrZXkSFAoFdm'
    'FsdWUYBSABKAlSBXZhbHVlGh4KCkdldFJlcXVlc3QSEAoDa2V5GAEgASgJUgNrZXkaOAoLR2V0'
    'UmVzcG9uc2USKQoGcmVzdWx0GAEgASgLMhEuYXBpLmJhc2UuU2V0dGluZ1IGcmVzdWx0GjcKDV'
    'VwZGF0ZVJlcXVlc3QSEAoDa2V5GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKAlSBXZhbHVlGjsK'
    'DlVwZGF0ZVJlc3BvbnNlEikKBnJlc3VsdBgBIAEoCzIRLmFwaS5iYXNlLlNldHRpbmdSBnJlc3'
    'VsdBogCgxSZXNldFJlcXVlc3QSEAoDa2V5GAEgASgJUgNrZXkaDwoNUmVzZXRSZXNwb25zZQ==');
