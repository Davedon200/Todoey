import 'package:flutter/material.dart';
import 'package:todoey/components/ListTile.dart';
import 'package:todoey/components/taskData.dart';
import 'package:todoey/screens/Addtask.dart';
import 'package:provider/provider.dart';

class Screenone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) => Newtask(
                  // newtaskcallback: (newText) {
                  //   // setState(
                  //   //   () {
                  //   //     tasks.add(Task(
                  //   //       name: newText,
                  //   //     ));
                  //   //   },
                  //   // );
                  //   Navigator.pop(context);
                  // },
                  ));
        },
        backgroundColor: Colors.lightBlueAccent,
        child: const Icon(
          Icons.add,
        ),
      ),
      backgroundColor: Colors.lightBlueAccent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              top: 80.0,
              left: 50.0,
              right: 30.0,
              bottom: 30.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const CircleAvatar(
                  radius: 35.0,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.list,
                    color: Colors.lightBlueAccent,
                    size: 35.0,
                  ),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                const Text(
                  'TODOEY',
                  style: TextStyle(
                    fontSize: 35.0,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Text(
                  '${Provider.of<TaskData>(context).taskCount} Tasks',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(32.0),
                  topRight: Radius.circular(32.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8.0,
                ),
                child: ListView(
                  children: [
                    TaskTile(),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
