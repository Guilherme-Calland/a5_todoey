import 'package:a5_todoey/resources/resources.dart';
import 'package:a5_todoey/widgets/guilherme.dart';
import 'package:a5_todoey/widgets/todoey.listview.dart';
import 'package:flutter/material.dart';

class TasksScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20)
            ),
          ),
        child: Column(
          children: <Widget>[
            TodoeyListView(),
            Guilherme()
          ],
        ),
      ),
    );
  }
}


