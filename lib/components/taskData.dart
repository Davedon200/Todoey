import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:todoey/components/Tasks.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'Buy Yam'),
    Task(name: 'Buy Bread'),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  void addTask(String newtasktitle) {
    final task = Task(name: newtasktitle);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }
}
