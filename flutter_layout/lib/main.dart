import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  debugPaintSizeEnabled = true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var list = [
      _photoItem("pic0"),
      _photoItem("pic1"),
      _photoItem("pic2"),
      _photoItem("pic3"),
      _photoItem("pic4"),
      _photoItem("pic5"),
    ];
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('GridView'),
            ),
            body: GridView.count(crossAxisCount: 2, children: list)));
  }

  Widget _photoItem(String image) {
    var assetsImage = "assets/img/" + image + ".png";
    return Container(
      child: Image.asset(
        assetsImage,
        fit: BoxFit.cover,
      ),
    );
  }
}
