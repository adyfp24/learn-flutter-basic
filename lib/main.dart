import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Hello Ady App',
            style: TextStyle(color: Colors.orange),
          ),
        ),
        body: Center(
          child: Container(
            width: 200,
            color: Colors.blue[100],
            child: Text(
              'Hello Ady sksksoandididndididididididnnf fififi ffifi', maxLines: 2,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
