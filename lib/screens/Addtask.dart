import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/components/taskData.dart';

class Newtask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String? newText;
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(30.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Center(
              child: Text(
                'Add Text',
                style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontSize: 20.0,
                ),
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (String newValue) {
                newText = newValue;
              },
            ),
            TextButton(
              onPressed: () {
                Provider.of<TaskData>(context).addTask(newText!);
                Navigator.pop(context);
              },
              child: const Text(
                'Add',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
