import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/dialog_box.dart';
import 'package:flutter_application_1/utils/to_do_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List tasks = [
    ["study chemistry", false],
    ["study dfsdfsdfsdf", false]
  ];


  //checkbox was tapped
  void checkboxChaged(int index){
    setState(() {
     tasks[index][1] = !tasks[index][1];      
    });
  }

  void createNewTask() {
    showDialog(context: context, builder: (context){
      return DialogBox();
    });
  }
  


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.yellow[200],
      appBar: AppBar(title: Text("To do list"), backgroundColor:Colors.yellow[500], centerTitle: true,),

      body: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          return ToDoTile(taskName: tasks[index][0], isFinished: tasks[index][1], onChanged: (value) => checkboxChaged(index));
        },
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.yellow[400],
        onPressed: createNewTask,
        child: Icon(Icons.add)),
        
    );
  }
}