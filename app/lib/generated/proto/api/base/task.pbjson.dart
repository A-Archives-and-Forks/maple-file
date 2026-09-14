//
//  Generated code. Do not modify.
//  source: api/base/task.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use taskStateDescriptor instead')
const TaskState$json = {
  '1': 'TaskState',
  '2': [
    {'1': 'TASK_STATE_UNSPECIFIED', '2': 0},
    {'1': 'TASK_STATE_PENDING', '2': 0},
    {'1': 'TASK_STATE_RUNNING', '2': 1},
    {'1': 'TASK_STATE_SUCCEEDED', '2': 2},
    {'1': 'TASK_STATE_CANCELING', '2': 3},
    {'1': 'TASK_STATE_CANCELED', '2': 4},
    {'1': 'TASK_STATE_FAILED', '2': 5},
  ],
  '3': {'2': true},
};

/// Descriptor for `TaskState`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List taskStateDescriptor = $convert.base64Decode(
    'CglUYXNrU3RhdGUSGgoWVEFTS19TVEFURV9VTlNQRUNJRklFRBAAEhYKElRBU0tfU1RBVEVfUE'
    'VORElORxAAEhYKElRBU0tfU1RBVEVfUlVOTklORxABEhgKFFRBU0tfU1RBVEVfU1VDQ0VFREVE'
    'EAISGAoUVEFTS19TVEFURV9DQU5DRUxJTkcQAxIXChNUQVNLX1NUQVRFX0NBTkNFTEVEEAQSFQ'
    'oRVEFTS19TVEFURV9GQUlMRUQQBRoCEAE=');

@$core.Deprecated('Use taskDescriptor instead')
const Task$json = {
  '1': 'Task',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'start_time', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'startTime'},
    {'1': 'end_time', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'endTime'},
    {'1': 'name', '3': 4, '4': 1, '5': 9, '10': 'name'},
    {'1': 'state', '3': 5, '4': 1, '5': 14, '6': '.api.base.TaskState', '10': 'state'},
    {'1': 'progress', '3': 6, '4': 1, '5': 1, '10': 'progress'},
    {'1': 'progress_state', '3': 7, '4': 1, '5': 9, '10': 'progressState'},
    {'1': 'log', '3': 8, '4': 1, '5': 9, '10': 'log'},
    {'1': 'err', '3': 9, '4': 1, '5': 9, '10': 'err'},
  ],
  '3': [Task_ListRequest$json, Task_ListResponse$json, Task_RetryRequest$json, Task_RetryResponse$json, Task_CancelRequest$json, Task_CancelResponse$json, Task_RemoveRequest$json, Task_RemoveResponse$json],
};

@$core.Deprecated('Use taskDescriptor instead')
const Task_ListRequest$json = {
  '1': 'ListRequest',
  '2': [
    {'1': 'filter', '3': 1, '4': 3, '5': 11, '6': '.api.base.Task.ListRequest.FilterEntry', '10': 'filter'},
  ],
  '3': [Task_ListRequest_FilterEntry$json],
};

@$core.Deprecated('Use taskDescriptor instead')
const Task_ListRequest_FilterEntry$json = {
  '1': 'FilterEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use taskDescriptor instead')
const Task_ListResponse$json = {
  '1': 'ListResponse',
  '2': [
    {'1': 'results', '3': 1, '4': 3, '5': 11, '6': '.api.base.Task', '10': 'results'},
  ],
};

@$core.Deprecated('Use taskDescriptor instead')
const Task_RetryRequest$json = {
  '1': 'RetryRequest',
  '2': [
    {'1': 'tasks', '3': 1, '4': 3, '5': 9, '10': 'tasks'},
  ],
};

@$core.Deprecated('Use taskDescriptor instead')
const Task_RetryResponse$json = {
  '1': 'RetryResponse',
};

@$core.Deprecated('Use taskDescriptor instead')
const Task_CancelRequest$json = {
  '1': 'CancelRequest',
  '2': [
    {'1': 'tasks', '3': 1, '4': 3, '5': 9, '10': 'tasks'},
  ],
};

@$core.Deprecated('Use taskDescriptor instead')
const Task_CancelResponse$json = {
  '1': 'CancelResponse',
};

@$core.Deprecated('Use taskDescriptor instead')
const Task_RemoveRequest$json = {
  '1': 'RemoveRequest',
  '2': [
    {'1': 'tasks', '3': 1, '4': 3, '5': 9, '10': 'tasks'},
  ],
};

@$core.Deprecated('Use taskDescriptor instead')
const Task_RemoveResponse$json = {
  '1': 'RemoveResponse',
};

/// Descriptor for `Task`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List taskDescriptor = $convert.base64Decode(
    'CgRUYXNrEg4KAmlkGAEgASgJUgJpZBI5CgpzdGFydF90aW1lGAIgASgLMhouZ29vZ2xlLnByb3'
    'RvYnVmLlRpbWVzdGFtcFIJc3RhcnRUaW1lEjUKCGVuZF90aW1lGAMgASgLMhouZ29vZ2xlLnBy'
    'b3RvYnVmLlRpbWVzdGFtcFIHZW5kVGltZRISCgRuYW1lGAQgASgJUgRuYW1lEikKBXN0YXRlGA'
    'UgASgOMhMuYXBpLmJhc2UuVGFza1N0YXRlUgVzdGF0ZRIaCghwcm9ncmVzcxgGIAEoAVIIcHJv'
    'Z3Jlc3MSJQoOcHJvZ3Jlc3Nfc3RhdGUYByABKAlSDXByb2dyZXNzU3RhdGUSEAoDbG9nGAggAS'
    'gJUgNsb2cSEAoDZXJyGAkgASgJUgNlcnIaiAEKC0xpc3RSZXF1ZXN0Ej4KBmZpbHRlchgBIAMo'
    'CzImLmFwaS5iYXNlLlRhc2suTGlzdFJlcXVlc3QuRmlsdGVyRW50cnlSBmZpbHRlcho5CgtGaW'
    'x0ZXJFbnRyeRIQCgNrZXkYASABKAlSA2tleRIUCgV2YWx1ZRgCIAEoCVIFdmFsdWU6AjgBGjgK'
    'DExpc3RSZXNwb25zZRIoCgdyZXN1bHRzGAEgAygLMg4uYXBpLmJhc2UuVGFza1IHcmVzdWx0cx'
    'okCgxSZXRyeVJlcXVlc3QSFAoFdGFza3MYASADKAlSBXRhc2tzGg8KDVJldHJ5UmVzcG9uc2Ua'
    'JQoNQ2FuY2VsUmVxdWVzdBIUCgV0YXNrcxgBIAMoCVIFdGFza3MaEAoOQ2FuY2VsUmVzcG9uc2'
    'UaJQoNUmVtb3ZlUmVxdWVzdBIUCgV0YXNrcxgBIAMoCVIFdGFza3MaEAoOUmVtb3ZlUmVzcG9u'
    'c2U=');

@$core.Deprecated('Use persistTaskDescriptor instead')
const PersistTask$json = {
  '1': 'PersistTask',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'created_at', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdAt'},
    {'1': 'updated_at', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'updatedAt'},
    {'1': 'name', '3': 4, '4': 1, '5': 9, '10': 'name'},
    {'1': 'status', '3': 5, '4': 1, '5': 8, '10': 'status'},
    {'1': 'type', '3': 6, '4': 1, '5': 9, '10': 'type'},
    {'1': 'option', '3': 7, '4': 1, '5': 9, '10': 'option'},
    {'1': 'cron_option', '3': 8, '4': 1, '5': 9, '10': 'cronOption'},
  ],
  '3': [PersistTask_ListRequest$json, PersistTask_ListResponse$json, PersistTask_CreateRequest$json, PersistTask_CreateResponse$json, PersistTask_UpdateRequest$json, PersistTask_UpdateResponse$json, PersistTask_DeleteRequest$json, PersistTask_DeleteResponse$json, PersistTask_TestRequest$json, PersistTask_TestResponse$json, PersistTask_ExecuteRequest$json, PersistTask_ExecuteResponse$json],
};

@$core.Deprecated('Use persistTaskDescriptor instead')
const PersistTask_ListRequest$json = {
  '1': 'ListRequest',
  '2': [
    {'1': 'filter', '3': 1, '4': 3, '5': 11, '6': '.api.base.PersistTask.ListRequest.FilterEntry', '10': 'filter'},
  ],
  '3': [PersistTask_ListRequest_FilterEntry$json],
};

@$core.Deprecated('Use persistTaskDescriptor instead')
const PersistTask_ListRequest_FilterEntry$json = {
  '1': 'FilterEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use persistTaskDescriptor instead')
const PersistTask_ListResponse$json = {
  '1': 'ListResponse',
  '2': [
    {'1': 'results', '3': 1, '4': 3, '5': 11, '6': '.api.base.PersistTask', '10': 'results'},
  ],
};

@$core.Deprecated('Use persistTaskDescriptor instead')
const PersistTask_CreateRequest$json = {
  '1': 'CreateRequest',
  '2': [
    {'1': 'payload', '3': 1, '4': 1, '5': 11, '6': '.api.base.PersistTask', '10': 'payload'},
  ],
};

@$core.Deprecated('Use persistTaskDescriptor instead')
const PersistTask_CreateResponse$json = {
  '1': 'CreateResponse',
  '2': [
    {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.api.base.PersistTask', '10': 'result'},
  ],
};

@$core.Deprecated('Use persistTaskDescriptor instead')
const PersistTask_UpdateRequest$json = {
  '1': 'UpdateRequest',
  '2': [
    {'1': 'payload', '3': 1, '4': 1, '5': 11, '6': '.api.base.PersistTask', '10': 'payload'},
  ],
};

@$core.Deprecated('Use persistTaskDescriptor instead')
const PersistTask_UpdateResponse$json = {
  '1': 'UpdateResponse',
  '2': [
    {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.api.base.PersistTask', '10': 'result'},
  ],
};

@$core.Deprecated('Use persistTaskDescriptor instead')
const PersistTask_DeleteRequest$json = {
  '1': 'DeleteRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
  ],
};

@$core.Deprecated('Use persistTaskDescriptor instead')
const PersistTask_DeleteResponse$json = {
  '1': 'DeleteResponse',
};

@$core.Deprecated('Use persistTaskDescriptor instead')
const PersistTask_TestRequest$json = {
  '1': 'TestRequest',
  '2': [
    {'1': 'payload', '3': 1, '4': 1, '5': 11, '6': '.api.base.PersistTask', '10': 'payload'},
  ],
};

@$core.Deprecated('Use persistTaskDescriptor instead')
const PersistTask_TestResponse$json = {
  '1': 'TestResponse',
};

@$core.Deprecated('Use persistTaskDescriptor instead')
const PersistTask_ExecuteRequest$json = {
  '1': 'ExecuteRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'dry_run', '3': 2, '4': 1, '5': 8, '10': 'dryRun'},
  ],
};

@$core.Deprecated('Use persistTaskDescriptor instead')
const PersistTask_ExecuteResponse$json = {
  '1': 'ExecuteResponse',
};

/// Descriptor for `PersistTask`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List persistTaskDescriptor = $convert.base64Decode(
    'CgtQZXJzaXN0VGFzaxIOCgJpZBgBIAEoBVICaWQSOQoKY3JlYXRlZF9hdBgCIAEoCzIaLmdvb2'
    'dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCWNyZWF0ZWRBdBI5Cgp1cGRhdGVkX2F0GAMgASgLMhou'
    'Z29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIJdXBkYXRlZEF0EhIKBG5hbWUYBCABKAlSBG5hbW'
    'USFgoGc3RhdHVzGAUgASgIUgZzdGF0dXMSEgoEdHlwZRgGIAEoCVIEdHlwZRIWCgZvcHRpb24Y'
    'ByABKAlSBm9wdGlvbhIfCgtjcm9uX29wdGlvbhgIIAEoCVIKY3Jvbk9wdGlvbhqPAQoLTGlzdF'
    'JlcXVlc3QSRQoGZmlsdGVyGAEgAygLMi0uYXBpLmJhc2UuUGVyc2lzdFRhc2suTGlzdFJlcXVl'
    'c3QuRmlsdGVyRW50cnlSBmZpbHRlcho5CgtGaWx0ZXJFbnRyeRIQCgNrZXkYASABKAlSA2tleR'
    'IUCgV2YWx1ZRgCIAEoCVIFdmFsdWU6AjgBGj8KDExpc3RSZXNwb25zZRIvCgdyZXN1bHRzGAEg'
    'AygLMhUuYXBpLmJhc2UuUGVyc2lzdFRhc2tSB3Jlc3VsdHMaQAoNQ3JlYXRlUmVxdWVzdBIvCg'
    'dwYXlsb2FkGAEgASgLMhUuYXBpLmJhc2UuUGVyc2lzdFRhc2tSB3BheWxvYWQaPwoOQ3JlYXRl'
    'UmVzcG9uc2USLQoGcmVzdWx0GAEgASgLMhUuYXBpLmJhc2UuUGVyc2lzdFRhc2tSBnJlc3VsdB'
    'pACg1VcGRhdGVSZXF1ZXN0Ei8KB3BheWxvYWQYASABKAsyFS5hcGkuYmFzZS5QZXJzaXN0VGFz'
    'a1IHcGF5bG9hZBo/Cg5VcGRhdGVSZXNwb25zZRItCgZyZXN1bHQYASABKAsyFS5hcGkuYmFzZS'
    '5QZXJzaXN0VGFza1IGcmVzdWx0Gh8KDURlbGV0ZVJlcXVlc3QSDgoCaWQYASABKAVSAmlkGhAK'
    'DkRlbGV0ZVJlc3BvbnNlGj4KC1Rlc3RSZXF1ZXN0Ei8KB3BheWxvYWQYASABKAsyFS5hcGkuYm'
    'FzZS5QZXJzaXN0VGFza1IHcGF5bG9hZBoOCgxUZXN0UmVzcG9uc2UaOQoORXhlY3V0ZVJlcXVl'
    'c3QSDgoCaWQYASABKAVSAmlkEhcKB2RyeV9ydW4YAiABKAhSBmRyeVJ1bhoRCg9FeGVjdXRlUm'
    'VzcG9uc2U=');
