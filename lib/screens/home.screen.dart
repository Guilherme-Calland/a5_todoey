import 'package:a5_todoey/resources/resources.dart';
import 'package:a5_todoey/screens/tasks.screen.dart';
import 'package:a5_todoey/screens/title.screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: todoeyTheme,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TitleScreen(),
          TasksScreen(),
        ],
      )
    );
  }
}



