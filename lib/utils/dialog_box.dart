import 'package:flutter/material.dart';

class DialogBox extends StatelessWidget {
  const DialogBox({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow,
      content: Container(
        height: 200,
        width: 300,
        
        child: Column(
          children: [
            //user input
            TextField(decoration: InputDecoration(
              border: OutlineInputBorder(),
              fillColor: Colors.white,
              hintText: "Name your task..."
            ),),
            

            //buttons save + cancel



          ],
        ),
      ),

    );
  }
}