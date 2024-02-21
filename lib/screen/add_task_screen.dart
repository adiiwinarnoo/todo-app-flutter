import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/models/task.dart';
import 'package:todo_app/models/task_data.dart';

class AddTask extends StatelessWidget {
  const AddTask({super.key,required this.addTaskCallback});

  final Function addTaskCallback;

  @override
  Widget build(BuildContext context) {

  String? newTitleTask;

    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(
            height: 50.0,
          ),
          const Center(
              child: Text(
            'Please Add your task',
            style: TextStyle(color: Colors.lightBlueAccent, fontSize: 18.0),
          )),
          const SizedBox(height: 20.0),
          Padding(
            padding: EdgeInsets.only(left: 40.0, right: 40.0),
            child: TextField(
              cursorColor: Colors.blue,
             autofocus: true,
             onChanged: (text) {
              newTitleTask = text;
             },
            ),
          ),
          const SizedBox(height: 50.0,),
          Padding(
            padding: EdgeInsets.only(bottom: 35.0),
            child: FloatingActionButton(
              backgroundColor: Colors.lightBlueAccent,
              child: Text('Add',style: TextStyle(color: Colors.white),),
              onPressed: (){
                print(newTitleTask);
                Provider.of<TaskData>(context,listen: false).addTask(newTitleTask!);
                Navigator.pop(context);
              },
            ),
          )      
          ]),
          
    );
  }
}
