import 'package:flutter/material.dart';

TextStyle myStyle = TextStyle(fontSize: 25);
class loginscreeen extends StatefulWidget {
  const loginscreeen({Key? key}) : super(key: key);

  @override
  State<loginscreeen> createState() => _loginscreeenState();
}

class _loginscreeenState extends State<loginscreeen> {

  

  final usernameField = TextField(
    style: myStyle,
    decoration: InputDecoration(
      contentPadding: EdgeInsets.all(10),
      hintText: "username",
      border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(32.0)
      )
    ),
  );

   final passwordField = TextField(
    obscureText: true,
    style: myStyle,
    decoration: InputDecoration(
      contentPadding: EdgeInsets.all(10),
      hintText: "password",
      border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(32.0)
      )
    ),
  );

   
  @override
  Widget build(BuildContext context) {
    final myloginbutton =Material(
    elevation: 5.0,
    borderRadius: BorderRadius.circular(30.0),
    color: Colors.blue,
    child: MaterialButton(
      minWidth: MediaQuery.of(context).size.width,
    
    )
   );

    return Scaffold()
    
  }
}