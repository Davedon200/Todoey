import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  String? tasksTitle;

  bool isChecked;
  final void Function(bool?)? checkboxcallbox;

  TaskTile({
    @required this.tasksTitle,
    @required this.isChecked = false,
    @required this.checkboxcallbox,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        tasksTitle!,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxcallbox,
      ),
    );
  }
}
