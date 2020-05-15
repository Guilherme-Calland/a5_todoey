import 'package:a5_todoey/resources/resources.dart';
import 'package:flutter/material.dart';

class TodoeyList extends StatelessWidget {

  List < String > tasks = [
    'wash dishes',
    'buy cheese',
    'go to the gym'
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
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
    );
  }
}