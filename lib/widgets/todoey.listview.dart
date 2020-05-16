import 'package:a5_todoey/model/task.dart';
import 'package:a5_todoey/model/todoey.data.dart';
import 'package:a5_todoey/resources/resources.dart';
import 'package:a5_todoey/widgets/todoey.list.tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TodoeyListView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Consumer<TodoeyData>(
      builder: (context, data, child){
        return Expanded(
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: data.tasksLength,
            itemBuilder: (context, index){
              final task = data.tasks[index];
              return TodoeyListTile(
                taskTitle: task.name,
                isChecked: task.isDone,
                toogleCheckBox: (bool value){
                  data.toggleCheckBox(task);
                },
              );
            }
          ),
        );
      }
    );
  }
}
