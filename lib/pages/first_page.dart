import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/second_page.dart';

class FirstPage extends StatelessWidget{
  const FirstPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("1st page"),),
      body: Center(
        child: ElevatedButton(
          child: Text("go to 2nd"),
          
          onPressed: (){
            Navigator.push(
              context, 
              MaterialPageRoute(
              builder: (context) => SecondPage()
              )
            );
          }
        ),
      ), 

    );



    
  }
}