import 'package:flutter/material.dart';

class ListTextTitle extends StatelessWidget {
  ListTextTitle({required this.isChecked,required this.taskTitle,required this.getCallback, required this.onLongPressCallback});

  bool isChecked = false;
  String taskTitle;
  final void Function(bool?)? getCallback;
  final Function() onLongPressCallback;



  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: onLongPressCallback,
      title: Text(
      taskTitle,
      style: TextStyle( 
        decoration: isChecked ? TextDecoration.lineThrough : null
      ),),
      trailing: Checkbox(
      checkColor: Colors.white,
      activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: getCallback
      )
    );
  }
}