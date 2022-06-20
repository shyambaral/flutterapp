import 'package:flutter/material.dart';

void main() {
  runApp(ScoreApp());
}

class ScoreApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Score APP",
      home: ScoreHome(),
    );
  }
}

class ScoreHome extends StatefulWidget {
  @override
  State<ScoreHome> createState() => _ScoreHomeState();
}

class _ScoreHomeState extends State<ScoreHome> {
  int number = 0;

  void increaseNumber() {
    setState(() {
      number++;
    });
  }

  void decreaseNumber() {
    setState(() {
      number--;
    });
  }

  void resetNumber() {
    setState(() {
      number = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("score Changer"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.restore_outlined),
        onPressed: resetNumber,
      ),
      body: Column(children: [
        SizedBox(
          height: 25,
        ),
        Center(
            child: Text(
          "Score is",
          style: TextStyle(color: Colors.green, fontSize: 25),
        )),
        Center(
            child: Text(
          "0",
          style: TextStyle(color: Colors.black, fontSize: 85),
        )),
        SizedBox(
          height: 25,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Center(
              child: RaisedButton(
            color: Colors.blue,
            child: Text('Increase'),
            onPressed:increaseNumber,
          )),
          SizedBox(height: 100),
          Center(
              child: RaisedButton(
            color: Colors.red,
            child: Text('Decrease'),
            onPressed:decreaseNumber,
          )),
        ]),
      ]),
    );
  }
}
