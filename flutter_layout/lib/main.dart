import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  debugPaintSizeEnabled = true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var grid = [
      "sample1",
      "sample2",
      "sample3",
      "sample4",
      "sample5",
      "sample6",
      "sample7",
      "sample8",
      "sample9",
      "sample10"
    ];
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('GridView'),
            ),
            body: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemBuilder: (BuildContext context, int index) {
                  if (index >= grid.length) {
                    grid.addAll([
                      "sample1",
                      "sample2",
                      "sample3",
                      "sample4",
                      "sample5",
                      "sample6",
                      "sample7",
                      "sample8",
                      "sample9",
                      "sample10"
                    ]);
                  }
                  return _photoItem(grid[index]);
                })));
  }

  Widget _photoItem(String image) {
    var assetsImage = "images/" + image + ".jpg";
    return Container(
      child: Image.asset(assetsImage, fit: BoxFit.cover),
    );
  }
}
