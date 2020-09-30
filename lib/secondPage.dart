import 'package:first_application/ThirdPage.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  String thirdPageTitle = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          color: Colors.blue,
          width: 300,
          height: 300,
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  hintText: 'Give title of third page',
                ),
                onChanged: (value)
                {
                  setState(() {
                    thirdPageTitle = value;
                  });
                  print(thirdPageTitle);
                },
              ),
              SizedBox(height: 40,),
              Center(
                child: Row(
                  children: <Widget>[
                    Icon(Icons.airplay),
                    SizedBox(width: 20,),
                    Icon(Icons.airline_seat_individual_suite)
                  ],
                ),
              ),
              SizedBox(height: 40,),
              RaisedButton(
                elevation: 4.0,
                child: Text
                  (
                    'Send',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.black,
                onPressed: ()
                {
                  if(thirdPageTitle!="")
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ThirdPage(a: thirdPageTitle,)));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
