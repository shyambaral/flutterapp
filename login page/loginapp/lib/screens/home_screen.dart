import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
   final String username;
   Homescreen(this.username);

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        title: Text("home page"),
      ),
      body: Column(
        children: [
          SizedBox(height: 25,),
          Center(child: Text("welcome to the Dashboard of Blood bank system" + username)),
          Center(child: Text("welcome shyam in your Dashboard")),
          

          
        ],
      ),
    );
  }
}