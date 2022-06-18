import 'package:getx_todo_list/app/data/providers/task/provider.dart';

import '../../models/task.dart';

class TaskRepository {
  TaskProvider taskProvider;
  TaskRepository({required this.taskProvider});

  // read tasks
  Future<List<Task>> readTasks() async {
    return taskProvider.readTask();
  }

  // write tasks
  Future<void> writeTasks(List<Task> tasks) async {
    taskProvider.writeTask(tasks);
  }
}
