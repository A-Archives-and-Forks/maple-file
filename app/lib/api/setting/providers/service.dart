import 'dart:convert';

import 'package:grpc/grpc.dart';
import 'package:maple_file/app/grpc.dart';
import 'package:maple_file/generated/proto/api/base/system.pbgrpc.dart';
import 'package:maple_file/generated/proto/api/base/setting.pbgrpc.dart';

class SystemService {
  static SystemService get instance => _instance;
  static final SystemService _instance = SystemService._internal();
  factory SystemService() => _instance;
  SystemService._internal();

  SystemServiceClient? _client;
  DateTime _clientTime = DateTime.now();

  SystemServiceClient get client {
    if (_client == null || Grpc.instance.connectTime.isAfter(_clientTime)) {
      _client = SystemServiceClient(
        Grpc.instance.client,
        options: CallOptions(
          metadata: {"Authorization": "Bearer ${Grpc.instance.token}"},
        ),
      );
      _clientTime = Grpc.instance.connectTime;
    }
    return _client!;
  }

  Future<Info> info() async {
    return doFuture(() async {
      Info_Request request = Info_Request();
      Info_Response response = await client.info(request);
      return response.result;
    });
  }
}

class SettingService {
  static SettingService get instance => _instance;
  static final SettingService _instance = SettingService._internal();
  factory SettingService() => _instance;
  SettingService._internal();

  SettingServiceClient? _client;
  DateTime _clientTime = DateTime.now();

  SettingServiceClient get client {
    if (_client == null || Grpc.instance.connectTime.isAfter(_clientTime)) {
      _client = SettingServiceClient(
        Grpc.instance.client,
        options: CallOptions(
          metadata: {"Authorization": "Bearer ${Grpc.instance.token}"},
        ),
      );
      _clientTime = Grpc.instance.connectTime;
    }
    return _client!;
  }

  Future<String> getSetting(String key) async {
    Setting_GetRequest request = Setting_GetRequest(key: key);
    Setting_GetResponse response = await client.getSetting(request);
    return response.result.value;
  }

  Future<void> updateSetting(String key, Object? value) {
    return doFuture(() async {
      Setting_UpdateRequest request = Setting_UpdateRequest(
        key: key,
        value: jsonEncode(value),
      );
      await client.updateSetting(request);
    });
  }
}
