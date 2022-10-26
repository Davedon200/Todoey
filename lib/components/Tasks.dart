import 'package:flutter/cupertino.dart';

class Task {
  final String? name;
  bool? isDone;
  Task({
    @required this.isDone = false,
    @required this.name,
  });

  void toggleDone() {
    isDone = !isDone!;
  }
}
