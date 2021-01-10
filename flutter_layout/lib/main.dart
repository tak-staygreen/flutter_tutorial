import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  debugPaintSizeEnabled = true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Material Design',
      home: Scaffold(
        body: Center(
          child: Container(
            color: Colors.blue,
            width: 300.0,
            height: 300.0,
          ),
        ),
      ),
    );
  }
}
