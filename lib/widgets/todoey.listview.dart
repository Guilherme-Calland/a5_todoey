import 'package:a5_todoey/resources/resources.dart';
import 'package:flutter/material.dart';

class TodoeyListView extends StatelessWidget {

  List < String > tasks = [
    'do the dishes',
    'buy some cheese',
    'conquer the world'
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
      ),
    );
  }
}
