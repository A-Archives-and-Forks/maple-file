//
//  Generated code. Do not modify.
//  source: api/base/system.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use infoDescriptor instead')
const Info$json = {
  '1': 'Info',
  '2': [
    {'1': 'os', '3': 1, '4': 1, '5': 9, '10': 'os'},
    {'1': 'arch', '3': 2, '4': 1, '5': 9, '10': 'arch'},
    {'1': 'runtime', '3': 3, '4': 1, '5': 9, '10': 'runtime'},
    {'1': 'version', '3': 4, '4': 1, '5': 9, '10': 'version'},
    {'1': 'description', '3': 5, '4': 1, '5': 9, '10': 'description'},
  ],
  '3': [Info_Request$json, Info_Response$json],
};

@$core.Deprecated('Use infoDescriptor instead')
const Info_Request$json = {
  '1': 'Request',
};

@$core.Deprecated('Use infoDescriptor instead')
const Info_Response$json = {
  '1': 'Response',
  '2': [
    {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.api.base.Info', '10': 'result'},
  ],
};

/// Descriptor for `Info`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List infoDescriptor = $convert.base64Decode(
    'CgRJbmZvEg4KAm9zGAEgASgJUgJvcxISCgRhcmNoGAIgASgJUgRhcmNoEhgKB3J1bnRpbWUYAy'
    'ABKAlSB3J1bnRpbWUSGAoHdmVyc2lvbhgEIAEoCVIHdmVyc2lvbhIgCgtkZXNjcmlwdGlvbhgF'
    'IAEoCVILZGVzY3JpcHRpb24aCQoHUmVxdWVzdBoyCghSZXNwb25zZRImCgZyZXN1bHQYASABKA'
    'syDi5hcGkuYmFzZS5JbmZvUgZyZXN1bHQ=');

