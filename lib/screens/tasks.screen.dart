import 'package:a5_todoey/resources/resources.dart';
import 'package:a5_todoey/widgets/todoey.list.dart';
import 'package:flutter/material.dart';

class TasksScreen extends StatelessWidget {
  
  List < String > tasks = [
    'do the dishes',
    'buy some cheese',
    'conquer the world'
  ];

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
          )
        ),
        child: ListView.builder(
          itemCount: tasks.length,
          itemBuilder: (context, index){
            return ListTile(
              trailing: Checkbox(
                activeColor: todoeyTheme,
                value: false,
                onChanged: (bool newValue){}, 
              ),
              title: Text(tasks[index])
            );
          }
        )
      )
    );
  }
}

