import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({this.a});

  @override
  _ThirdPageState createState() => _ThirdPageState();

  final String a;
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.a),
      ),
      body: Center(
        child: Text('Third Page'),
      ),
    );
  }
}
