import 'package:a5_todoey/model/task.dart';
import 'package:flutter/widgets.dart';

class TodoeyData extends ChangeNotifier{

  List < Task > tasks = [
    Task(name: 'do the dishes'),
    Task(name: 'buy some cheese'),
    Task(name: 'conquer the world')
  ];

  String imageUrl = 'images/gui.right.png';

  int get tasksLength{
    return tasks.length;
  }

  addTask(Task task){
    tasks.add(task);
    notifyListeners();
  }

  deleteTask(Task task){
    tasks.remove(task);
    resetImage();
    notifyListeners();
  }

  toggleCheckBox(Task task){
    task.isDone = !task.isDone;
    notifyListeners();
  }

  toggleImageOff(){
    imageUrl = '';
    notifyListeners();
  }

  resetImage(){
    imageUrl = 'images/gui.right.png';
    notifyListeners();
  }

  thumbsUp(){
    imageUrl = 'images/gui.right.thumbsUp.png';
    notifyListeners();
  }



}