// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';


class TodoTile extends StatelessWidget {

 final String taskName;
 final bool taskCompleted;

Function(bool?)? onChanged;




  TodoTile({
    super.key, 
    required this.taskName, 
    required this.taskCompleted,
    required this.onChanged,
    });

  @override
  Widget build(BuildContext context) {
    return 
    
    //YELLOW BOX
    Padding(
      padding: const EdgeInsets.all(25.0),
      child: Container(

        //TEXT
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Row(
            children: [

            //CHECKBOX
            Checkbox(value: taskCompleted, onChanged: onChanged),


            //TEXT
            Text(taskName),




            ],
          ),
        ),


        decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.circular(16)
        ),
        
      
      ),
    );
  }
}