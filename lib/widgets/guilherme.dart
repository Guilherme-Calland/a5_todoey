import 'package:a5_todoey/model/todoey.data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Guilherme extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Consumer<TodoeyData>(
      builder: (context, data, child){
        return Transform.translate(
          offset: Offset(-150,-50),
          child: Image.asset(data.imageUrl) ,
        );
      }
    );
  }
}

