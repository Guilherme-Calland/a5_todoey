import 'package:a5_todoey/resources/resources.dart';
import 'package:flutter/material.dart';

class TodoeyListTile extends StatelessWidget {

  bool isChecked;
  String taskTitle;
  Function toogleCheckBox;
  Function onLongPress;

  TodoeyListTile({
    this.isChecked, 
    this.taskTitle, 
    this.toogleCheckBox, 
    this.onLongPress
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: onLongPress,
      trailing: Checkbox(
        activeColor: todoeyTheme,
        value: isChecked,
        onChanged: toogleCheckBox
      ),
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? 
          TextDecoration.lineThrough : null
        )
      )
    );
  }
}