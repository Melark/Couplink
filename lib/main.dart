import 'package:couplink/src/pages/home.dart';
import 'package:couplink/src/pages/widgets/path_painter.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PathPainter(),
    );
  }
}