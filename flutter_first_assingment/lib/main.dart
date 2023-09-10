import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle:true,
        backgroundColor: Colors.green,
        elevation: 70,
        toolbarHeight: 100,

        leading: IconButton(
          icon: Icon(Icons.add_business),
          onPressed: () {
            // Implement your action here
            },
        ),
        title: Text(
          'Home',
          style: TextStyle(
            fontSize: 24,
          ),
        ),

        actions:[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Implement your action here
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Text("This is Mode 5 Assignment",  style: TextStyle(
                fontSize:16,
                fontWeight: FontWeight.bold,
              ),),
            ),

            RichText(
              text: TextSpan(
                style: TextStyle(fontSize: 20, color: Colors.red),
                children: [
                  TextSpan(
                      text: 'My ', style: TextStyle(color: Colors.red)),
                  TextSpan(text: 'Phone ', style: TextStyle(color: Colors.cyan, fontSize: 11,)),

                  TextSpan(
                      text: 'name ',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.purpleAccent,
                          fontWeight: FontWeight.w600)),

                  TextSpan(
                      text: 'Your Phone name',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.amber,
                          fontWeight: FontWeight.w600)),
                ],
              ),
            ),

            // You can add more widgets here as needed
          ],
        ),
      ),
    );
  }
}