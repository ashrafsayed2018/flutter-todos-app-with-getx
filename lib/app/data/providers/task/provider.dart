import 'dart:convert';
import 'package:get/get.dart';
import 'package:getx_todo_list/app/core/utils/keys.dart';
import 'package:getx_todo_list/app/data/services/storage/services.dart';
import '../../models/task.dart';

class TaskProvider {
  final StorageService _storageService = Get.find<StorageService>();
  // readTask
  Future<List<Task>> readTask() async {
    final List<Task> tasks = [];
    jsonDecode(_storageService.read(taskKey).toString()).forEach((element) {
      tasks.add(Task.fromJson(element));
    });
    return tasks;
  }

  // writeTask
  Future<void> writeTask(List<Task> tasks) async {
    _storageService.write(taskKey, jsonEncode(tasks));
  }
}
