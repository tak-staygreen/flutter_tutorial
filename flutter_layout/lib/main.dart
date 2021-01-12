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
      _photoItem("sample1"),
      _photoItem("sample2"),
      _photoItem("sample3"),
      _photoItem("sample4"),
      _photoItem("sample5"),
      _photoItem("sample6"),
      _photoItem("sample7"),
      _photoItem("sample8"),
      _photoItem("sample9"),
      _photoItem("sample10"),
    ];
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('GridView'),
            ),
            body: GridView.extent(
                maxCrossAxisExtent: 150,
                padding: const EdgeInsets.all(4),
                mainAxisSpacing: 4,
                crossAxisSpacing: 4,
                children: list)));
  }

  Widget _photoItem(String image) {
    var assetsImage = "images/" + image + ".jpg";
    return Container(
      child: Image.asset(
        assetsImage,
        fit: BoxFit.cover,
      ),
    );
  }
}
