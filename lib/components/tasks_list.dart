import 'package:flutter/material.dart';
import 'package:todoey/components/ListTile.dart';

import 'package:provider/provider.dart';
import 'package:todoey/components/taskData.dart';

class Taskslist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskdata, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskdata.tasks[index];
            return TaskTile(
                tasksTitle: task.name,
                isChecked: task.isDone!,
                checkboxcallbox: (newvalue) {
                  taskdata.updateTask(task);
                });
          },
          itemCount: taskdata.taskCount,
        );
      },
    );
  }
}
