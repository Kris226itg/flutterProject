import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {

  void upgradeButton(){
    coinsPerClick += 1;
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text("Shop"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),


      body: Center(
        child: Column(
          children: [
            ElevatedButton(onPressed: upgradeButton, child: Text("upgrade button"))
          ],
        ),
      ),





    );
  }
}