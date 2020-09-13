import 'package:flutter/material.dart';

void main() {
  runApp(FirstApp());
}

//Inheriance....

class FirstApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First Application',
      theme: ThemeData.light(),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

//private

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Home Page'),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red[300],
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          decoration: BoxDecoration(
            color: Colors.blue,
            border: Border.all(width: 3.0, color: Colors.black),
            borderRadius: BorderRadius.circular(50.0),
              boxShadow: [new BoxShadow(
                color: Colors.black,
                blurRadius: 20.0,
              ),]
          ),
          child: Center(
              child: Text(
                'Container is in centre',
                style: TextStyle(
                    color: Colors.red[900],
                    fontSize: 25,
                  fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic
                ),
              )
          ),
        ),
      ),
    );
  }
}