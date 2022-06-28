import 'package:flutter/material.dart';
import 'package:loginapp/main.dart';
import 'package:loginapp/screens/home_screen.dart';
 TextStyle myStyle = TextStyle(fontSize: 25);

class loginscreen extends StatefulWidget {

  @override
  State<loginscreen> createState() => _loginscreenState();
}

class _loginscreenState extends State<loginscreen> {
    late String username;
    late String password;


  @override
  Widget build(BuildContext context) {
    final usernameField =TextField(
     onChanged: (val){
      setState(() {
        username = val;
      });
     },
     style: myStyle,
    
    decoration: InputDecoration(
      contentPadding: EdgeInsets.all(10),
      hintText: "username",
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(32.0),
      )
    ),
  );

  final passwordField =TextField(
    onChanged: (val){
      setState(() {
        password = val;
      });
     },
    obscureText: true,
    style: myStyle,
    decoration: InputDecoration(
      contentPadding: EdgeInsets.all(10),
      hintText: "password",
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(32.0),
      )
    ),
  );

    final myloginbutton =Material(
  elevation: 5.0,
  borderRadius: BorderRadius.circular(30.0),
  color: Colors.blue,
  child: MaterialButton(
    minWidth: MediaQuery.of(context).size.width,
    padding: EdgeInsets.all(20),
    onPressed: (){
      if(username == "syam" && password =="shyam"){
       Navigator.push(context, MaterialPageRoute(builder: (context)=>Homescreen(username))); 
        print("Login is successful");
      }else{
        print("login failed");
      }
    },
  child: Text('login', style: TextStyle(color: Colors.white, fontSize: 25),), 
  )
);

    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.all(20),
            child: ListView(
              children: [
                  Column(
              mainAxisAlignment:MainAxisAlignment.center ,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                Icon(Icons.supervised_user_circle, size: 100,),
                usernameField,
                SizedBox(height: 20),
                passwordField,
                SizedBox(height: 10),
                myloginbutton,
                SizedBox(height: 50),
                Text('Register',style: TextStyle(color: Colors.black, fontSize: 25),)
                
                 
              ],
            ),
              ],
            )
          ),
        )
         ),
    );
  }

}