// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';

class ToDoTile extends StatelessWidget {
  String taskName;
  bool isFinished;
  Function(bool?)? onChanged;


  ToDoTile({
    super.key,
    required this.taskName,
    required this.isFinished,
    required this.onChanged
    });

  @override
  Widget build(BuildContext context) {
    return 
    Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, top: 25),

      child: Container(
        padding: EdgeInsets.all(25),

        decoration: BoxDecoration(
          color: isFinished? Colors.grey : Colors.yellow,
          borderRadius: BorderRadius.circular(20),
        ),


        child: Row(
          children: [
            Checkbox(value: isFinished, onChanged: onChanged, activeColor:Colors.black),
            Text(taskName, style: TextStyle(fontSize: 20, decoration: isFinished? TextDecoration.lineThrough : TextDecoration.none),),
          ],
        ),

          
        
      ),
    );
  }
}