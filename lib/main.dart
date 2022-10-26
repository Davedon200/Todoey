import 'package:flutter/material.dart';
import 'package:todoey/components/taskData.dart';
import 'package:todoey/screens/firstScreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Screenone(),
      ),
    );
  }
}
