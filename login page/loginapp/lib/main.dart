import 'package:flutter/material.dart';
import 'package:loginapp/screens/login_screen.dart';

void main()=> runApp(loginapp());

class loginapp extends StatelessWidget {
  const loginapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "login app",
      home: loginapp(),
    );
  }
}