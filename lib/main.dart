import 'package:a5_todoey/resources/resources.dart';
import 'package:a5_todoey/screens/home.screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Todoey());
}

class Todoey extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        cursorColor: todoeyTheme,
      ),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}