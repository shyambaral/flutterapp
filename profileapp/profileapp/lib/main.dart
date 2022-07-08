
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "profile App",
    home: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('profile app'),
      ),
      body: Column(
        children: [
          SizedBox(height: 10),
          Center(
              child: Image.network(
            "https://upload.wikimedia.org/wikipedia/commons/0/01/KP_Oli.png",
            height: 200,
            width: 200,
          )),
          SizedBox(height: 10),
          Text(
            'Name: KP OLI',
            style: TextStyle(
                fontSize: 24, color: Colors.green, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text('Address: Kathmandu, nepal'),
          SizedBox(height: 100),
          Text('Develop By Shyam Baral'),
         
        ],
      ),
    ),
  ));
}
