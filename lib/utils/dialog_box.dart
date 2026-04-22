import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/my_button.dart';

class DialogBox extends StatelessWidget {
  const DialogBox({super.key});

  @override

void saveNewTask(){
  
}




  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow,
      content: Container(
        height: 200,
        width: 300,
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //user input
            TextField(decoration: InputDecoration(
              border: OutlineInputBorder(),
              fillColor: Colors.white,
              hintText: "Name your task..."
            ),),
            

            //buttons save + cancel
            Row(
              children: [
                MyButton(text: "save", onPressed: (){}),
                MyButton(text: "cancel", onPressed: (){})
              ],
              
            )


          ],
        ),
      ),

    );
  }
}