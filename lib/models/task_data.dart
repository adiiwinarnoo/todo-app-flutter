import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:todo_app/models/task.dart';

class TaskData extends ChangeNotifier {
   List<Task> tasks = [];

  int get getCount {
    return tasks.length;
  }

  void addTask(String textTitle){
    final task = Task(name: textTitle, isDone: false);
    tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task){
    task.toggleDone();
    notifyListeners();
  }
  
  void deleteTask(Task task){
    tasks.remove(task);
    notifyListeners();
  }
}