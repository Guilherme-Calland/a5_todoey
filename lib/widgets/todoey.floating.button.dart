import 'package:a5_todoey/resources/resources.dart';
import 'package:a5_todoey/screens/add.task.screen.dart';
import 'package:flutter/material.dart';

class TodoeyFloatingButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(-10,-35),
      child: FloatingActionButton(
        backgroundColor: todoeyTheme,
        child: Icon(Icons.add),
        onPressed: (){
          Navigator.of(context).push(PageRouteBuilder(
            opaque: false,
            pageBuilder: (BuildContext context, _, __){
              return AddTaskScreen();
            }
          ));
        }
      ),
    );
  }
}


