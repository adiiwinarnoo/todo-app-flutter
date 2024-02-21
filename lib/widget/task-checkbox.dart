import 'package:flutter/material.dart';

class TaskCheckbox extends StatelessWidget {
  TaskCheckbox({super.key, required  this.isChecked, required this.toggleChecboxState});

  final bool isChecked;
  final void Function(bool?)? toggleChecboxState;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      checkColor: Colors.white,
      activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged:toggleChecboxState
      );
  }
}