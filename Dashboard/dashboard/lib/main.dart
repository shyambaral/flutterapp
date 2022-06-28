import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Dashboard(),
      debugShowCheckedModeBanner: false,
    )
  );
}

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.menu, color: Colors.white, size: 50.0),
                  Image.asset("assets/1.png", width: 50.0,),
                ],
              )
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(
                "Dashboard option", style: TextStyle(color: Colors.white, fontSize: 28.0, fontWeight: FontWeight.bold),
                textAlign: TextAlign.start,

              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Center(
                child: Wrap(
                  spacing: 20.0, runSpacing: 20.0,
                  children: [
                   SizedBox(
                    width: 160.0,
                    height: 160.0,
                    child: Card(
                      color: Color.fromARGB(255, 21, 21, 21),
                      elevation: 2.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0)
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Image.asset("assets/6.png"),
                                SizedBox(height: 10.0,),
                                Text("Blood bank", style: TextStyle(color: Colors.white,),),
                                Image.asset("assets/2.png"),
                                SizedBox(height: 10.0,),
                                Text("Blood bank", style: TextStyle(color: Colors.white,),),
                                Image.asset("assets/3.png"),  
                                SizedBox(height: 10.0,),                              
                                Text("Blood bank", style: TextStyle(color: Colors.white,),),
                                

                              ],
                            
                            ),

                             
                          ),
                        ),
                    ),
                   ) 
                  ],
                ),
              ),
            )
          ],
        )
        ),
    );
  }
}