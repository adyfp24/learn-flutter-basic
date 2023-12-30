import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[50],
          title: Text('aplikasi ady', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,fontStyle: FontStyle.italic, fontFamily: 'Roboto', color: Colors.blue[100])),
        ),
        body: Center(
          child: Column(
            children: [Container(
              width: 20,
              height: 20,
              margin: EdgeInsets.all(10),
            ), Container(
              width: 20,
              height: 20,
              margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
            )],
          ),
        ),
      ),
    );
  }
}

