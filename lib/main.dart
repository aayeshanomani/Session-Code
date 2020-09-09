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
      theme: ThemeData.dark(),
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
          color: Colors.white,
          child: Center(
              child: Text(
                'Container is in centre',
                style: TextStyle(
                    color: Colors.red[900],
                  fontSize: 22,
                ),
              )
          ),
        ),
      ),
    );
  }
}