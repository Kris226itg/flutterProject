import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  

int coins = 0;

void getcoin(int number){
  setState(() {
    coins = coins + number;
  });

}





@override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.yellow[200],


      appBar: AppBar(
        backgroundColor: Colors.yellow[500],
        title: Text("Coin app"),
        centerTitle: true,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [    
          


            Text(
              "$coins" + " coins", 
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 20
              ),
            ),


            ElevatedButton(
              onPressed: () => getcoin(coinsPerClick),
              child: Text("get a coin")
            ),



            Text(
              "Click strengh: " + "$coinsPerClick", 
              style: TextStyle(
                fontStyle: FontStyle.normal,
                fontSize: 20
              ),
            ),





          ]
  
        
          
          ),
      ),

      floatingActionButton: ElevatedButton(
        onPressed: () => Navigator.pushNamed(context, "/shop"),
        child: Text("Shop"),
      ),


    );
  }
}