import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<int> values = [1, 2, 3, 4, 5, 6];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              index++;
              return Image(
                image: AssetImage('assets/$index.jpg'),
              );
            },
            itemCount: values.length,
          ),
        ),
      ),
    );
  }
}
