// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ToDoTile extends StatelessWidget {
  final String taskName;
  final bool isFinished;
  Function(bool?)? onChanged;
  Function(BuildContext)? deleteFunction;




  ToDoTile({
    super.key,
    required this.taskName,
    required this.isFinished,
    required this.onChanged,
    required this.deleteFunction,
    });

  @override
  Widget build(BuildContext context) {
    return 
    Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, top: 25),

      child: Slidable(
        endActionPane: ActionPane(
          motion: StretchMotion(),
          children: [
            SlidableAction(
              borderRadius: BorderRadius.circular(20),
              onPressed: deleteFunction,
              backgroundColor: Colors.red,
              icon: (Icons.delete),
              ),
            
            ]),
        
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
      ),
    );
  }
}