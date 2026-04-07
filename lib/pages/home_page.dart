import 'package:flutter/material.dart';
import 'package:flutter_application_1/utilities/todo_tile.dart';


class HomePage extends StatefulWidget {

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

    //list of to do tasks
    List toDoList = [
    ["goon", false],
    ["sybau", true],
  ];

//checkbox was tapped
void checkboxChanged(bool? value, int index) {
  setState(() {
    toDoList[index][1] = !toDoList[index][1];
  });
}



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],

      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text("To do"),
        centerTitle: true,
      ),


      body: ListView.builder(
        itemCount: toDoList.length,
        itemBuilder: (context, index) {
          return
          TodoTile(
            taskName: toDoList[index][0],
            taskCompleted: toDoList[index][1],
            onChanged: (value) => checkboxChanged(value, index),
            );
        },
      )



    ); 
  }
}