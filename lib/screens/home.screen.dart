import 'package:a5_todoey/resources/resources.dart';
import 'package:a5_todoey/screens/tasks.screen.dart';
import 'package:a5_todoey/screens/title.screen.dart';
import 'package:a5_todoey/widgets/todoey.list.dart';
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
          Container(
            padding: EdgeInsets.symmetric(horizontal: 50),
            height: 150,
            width: 500,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Transform.scale(
                  scale: 3,
                  child: Image.asset(
                    'images/gui.right.png',
                  ),
                ),
              ],
            ),
          )
        ],
      )
    );
  }
}



