import 'package:flutter/material.dart';

class homescreen extends StatelessWidget {
  const homescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("home page"),

      ),
      body: Column(
        children: [
          SizedBox(height: 25,),
          Text("welcome"+ username),
          SizedBox(height: 250,),
          
        ],
      ),
    );
  }
}