import 'package:first_application/secondPage.dart';
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
        child: Icon(Icons.arrow_forward),
        onPressed: ()
        {
          Navigator.push(context, MaterialPageRoute(builder: (context) => SecondPage()));
        },
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.blue,
            border: Border.all(width: 2.0, color: Colors.yellow),
            borderRadius: BorderRadius.circular(20.0),
              boxShadow: [new BoxShadow(
                color: Colors.black,
                blurRadius: 10.0,
              ),]
          ),
          child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                'Container is in centre',
                style: TextStyle(
                    color: Colors.red[900],
                    fontSize: 30,
                    fontStyle: FontStyle.italic
                ),
              ),
              SizedBox(height: 30,),
              Text(
                'Container is in centre',
                style: TextStyle(
                    color: Colors.red[900],
                    fontSize: 30,
                    fontStyle: FontStyle.italic
                ),
              ),
              SizedBox(height: 30,),
              Container(
                color: Colors.red,
                padding: EdgeInsets.all(10),
                child: Text(
                  'Container is in centre',
                  style: TextStyle(
                      color: Colors.red[900],
                      fontSize: 30,
                      fontStyle: FontStyle.italic
                  ),
                ),
              ),
            ],
          ),
          ),
        ),
      ),
    );
  }
}

