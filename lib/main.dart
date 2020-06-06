import 'package:a5_todoey/model/todoey.data.dart';
import 'package:a5_todoey/resources/resources.dart';
import 'package:a5_todoey/screens/home.screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(Todoey());
}

class Todoey extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TodoeyData(),
      child: MaterialApp(
        theme: ThemeData(
          cursorColor: todoeyTheme,
          primarySwatch: Colors.purple
        ),
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}