import 'package:flutter/material.dart';
import 'homepage.dart';

import 'selectedColor.dart' as colorChoice;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch:
            MaterialColor(colorChoice.selectedColor, colorChoice.color),
      ),
      home: homePage(),
    );
  }
}
