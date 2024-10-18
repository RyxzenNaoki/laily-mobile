import 'package:flutter/material.dart';
import 'package:project_pertama/hometravel.dart';
import 'package:project_pertama/logintravel.dart';

void main() {
  runApp(MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: login(),
      routes: {
        '/home': (context) => home(),
      },
    );
  }
}
