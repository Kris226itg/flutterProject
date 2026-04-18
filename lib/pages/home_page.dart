import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  

int deadniggers = 0;

void killnigger(int number){
  setState(() {
    deadniggers = deadniggers + number;
  });

}





@override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.yellow[200],


      appBar: AppBar(
        backgroundColor: Colors.yellow[500],
        title: Text("Kill niggers app"),
        centerTitle: true,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [    
          
            Text(
              "$deadniggers" + " dead niggers", 
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 20
              ),
            ),


            ElevatedButton(
              onPressed: () => killnigger(1),
              child: Text("kill a nigger")
            ),

            


          ]
  
        
          
          ),
      ),


    );
  }
}