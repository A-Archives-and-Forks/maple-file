import 'dart:async';

import 'package:grpc/grpc.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';

import 'package:maple_file/app/i18n.dart';
import 'package:maple_file/app/grpc.dart';
import 'package:maple_file/generated/proto/api/base/task.pbgrpc.dart';

class TaskService {
  static TaskService get instance => _instance;
  static final TaskService _instance = TaskService._internal();
  factory TaskService() => _instance;
  TaskService._internal();

  TaskServiceClient? _client;
  DateTime _clientTime = DateTime.now();

  TaskServiceClient get client {
    if (_client == null || Grpc.instance.connectTime.isAfter(_clientTime)) {
      _client = TaskServiceClient(
        Grpc.instance.client,
        options: CallOptions(
          metadata: {"Authorization": "Bearer ${Grpc.instance.token}"},
        ),
      );
      _clientTime = Grpc.instance.connectTime;
    }
    return _client!;
  }

  Future<List<Task>> listTasks({Map<String, String>? filterMap}) async {
    Task_ListRequest request = Task_ListRequest();
    Task_ListResponse response = await client.listTasks(request);
    return response.results;
  }

  Future<void> removeTask(List<String> tasks) async {
    await doFuture(() {
      Task_RemoveRequest request = Task_RemoveRequest(
        tasks: tasks,
      );
      return client.removeTask(request);
    });
  }

  Future<void> cancelTask(List<String> tasks) async {
    await doFuture(() {
      Task_CancelRequest request = Task_CancelRequest(
        tasks: tasks,
      );
      return client.cancelTask(request);
    });
  }

  Future<void> retryTask(List<String> tasks) async {
    await doFuture(() {
      Task_RetryRequest request = Task_RetryRequest(
        tasks: tasks,
      );
      return client.retryTask(request);
    });
  }

  Future<List<PersistTask>> listPersistTasks({Map<String, String>? filterMap}) {
    return doFuture(() async {
      PersistTask_ListRequest request = PersistTask_ListRequest();
      PersistTask_ListResponse response =
          await client.listPersistTasks(request);
      return response.results;
    });
  }

  Future<PersistTask> createPersistTask(PersistTask payload) {
    return doFuture(() async {
      PersistTask_CreateRequest request =
          PersistTask_CreateRequest(payload: payload);
      PersistTask_CreateResponse response =
          await client.createPersistTask(request);
      return response.result;
    });
  }

  Future<PersistTask> updatePersistTask(PersistTask payload) {
    return doFuture(() async {
      PersistTask_UpdateRequest request =
          PersistTask_UpdateRequest(payload: payload);
      PersistTask_UpdateResponse response =
          await client.updatePersistTask(request);
      return response.result;
    });
  }

  Future<void> deletePersistTask(int id) {
    return doFuture(() {
      PersistTask_DeleteRequest request = PersistTask_DeleteRequest(id: id);
      return client.deletePersistTask(request);
    });
  }

  Future<void> testPersistTask(PersistTask payload) {
    return doFuture(() {
      PersistTask_TestRequest request =
          PersistTask_TestRequest(payload: payload);

      return client.testPersistTask(request);
    });
  }

  Future<void> executePersistTask(int id) {
    return doFuture(() {
      PersistTask_ExecuteRequest request = PersistTask_ExecuteRequest(id: id);

      return client.executePersistTask(request);
    }).then((_) {
      SmartDialog.showNotify(
          msg: "执行成功，请转至任务列表查看".tr(), notifyType: NotifyType.success);
    });
  }
}
