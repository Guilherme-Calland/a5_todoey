import 'package:a5_todoey/resources/resources.dart';
import 'package:flutter/material.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: todoeyBackground
      ,
      body: Center(
        child: Text(
          'Gui\'s Task App',
        )
      )
    );
  }
}