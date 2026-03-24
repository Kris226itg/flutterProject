import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/first_page.dart';

void main() {
  runApp( MyApp());
}


class MyApp extends StatelessWidget {
   MyApp({super.key});


  List challanges = ["push-ups", "mewing", "running"];

void userTapped() {
 print("nigger");

}



@override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),

      
        body: Center(
          child: ElevatedButton(
          child: Text("go to 1st"),
          
          onPressed: (){
            Navigator.push(
              context, 
              MaterialPageRoute(
              builder: (context) => FirstPage()
              )
            );
          }
        ),
        )
              
            
      ),
    );  
      
    
      

        

    
      
  }



}