import 'package:flutter/material.dart';

class homescreen extends StatelessWidget {
   
  final String username;
  homescreen(this.username);
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