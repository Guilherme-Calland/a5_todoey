import 'package:a5_todoey/resources/resources.dart';
import 'package:flutter/material.dart';

class TodoeyListTile extends StatelessWidget {

  bool isChecked;
  String taskTitle;
  Function toogleCheckBox;

  TodoeyListTile({this.isChecked, this.taskTitle, this.toogleCheckBox});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: Checkbox(
        activeColor: todoeyTheme,
        value: isChecked,
        onChanged: toogleCheckBox
      ),
      title: Text(taskTitle)
    );
  }
}