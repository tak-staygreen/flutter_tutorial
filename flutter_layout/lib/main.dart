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
      title: 'flutter Material Design',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material Deisgn Layout'),
        ),
        body: Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
