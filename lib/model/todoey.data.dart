import 'package:a5_todoey/model/task.dart';
import 'package:flutter/widgets.dart';

class TodoeyData extends ChangeNotifier{

  List < Task > tasks = [
    Task(name: 'do the dishes'),
    Task(name: 'buy some cheese'),
    Task(name: 'conquer the world')
  ];

  int get tasksLength{
    return tasks.length;
  }

  addTask(Task task){
    tasks.add(task);
    notifyListeners();
  }

  toggleCheckBox(Task task){
    task.isDone = !task.isDone;
    notifyListeners();
  }

}