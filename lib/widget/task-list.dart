import 'package:flutter/material.dart';
import 'package:todo_app/widget/task-title.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/models/task_data.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context,taskData,child) {
        return ListView.builder(
        itemBuilder: (context, index) {
          final taskValue = taskData.tasks[index];
          return ListTextTitle(
            isChecked: taskValue.isDone,
            taskTitle: taskValue.name,
            getCallback: (value) {
              taskData.updateTask(taskValue);
            },
            onLongPressCallback: (){
              taskData.deleteTask(taskValue);
            },
          );
        },
        itemCount: taskData.getCount,
      );
      },
    );
  }
}
