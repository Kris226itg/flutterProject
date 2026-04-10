import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:flutter_application_1/pages/home_page.dart';


=======
import 'package:flutter_application_1/pages/first_page.dart';
>>>>>>> e2d84090f5fb01504b893063ea88b69b52d5ebe5

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
<<<<<<< HEAD
      home: HomePage(),
      theme: ThemeData(primarySwatch: Colors.yellow),


    );
=======
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
      
    
      

        

    
      
>>>>>>> e2d84090f5fb01504b893063ea88b69b52d5ebe5
  }
}