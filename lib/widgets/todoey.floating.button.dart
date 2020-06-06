import 'package:a5_todoey/model/todoey.data.dart';
import 'package:a5_todoey/resources/resources.dart';
import 'package:a5_todoey/screens/add.task.screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TodoeyFloatingButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: todoeyTheme,
      child: Icon(Icons.add),
      onPressed: (){
        Provider.of<TodoeyData>(context, listen: false)
        .resetImage();
        Navigator.of(context).push(
          PageRouteBuilder(
            opaque: false,
            pageBuilder: (BuildContext context, _, __){
              return AddTaskScreen();
            }
          )
        );
      }
    );
  }
}


