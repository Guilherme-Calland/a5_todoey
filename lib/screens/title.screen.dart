import 'package:a5_todoey/model/todoey.data.dart';
import 'package:a5_todoey/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class TitleScreen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 80,
        left: 40,
        bottom: 40
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 30,
            child: Icon(
              Icons.list,
              size: 30,
              color: todoeyTheme
            )
          ),
          SizedBox(height : 20),
          Text(
            "Gui's Task App",
            style : TextStyle(
              color: Colors.white,
              fontSize: 40,
              fontWeight: FontWeight.w900
            )
          ),
          SizedBox(height : 10),
          Consumer<TodoeyData>(
            builder: (context, data, child){
              return Text(
                '${data.tasksLength} Tasks',
                style: TextStyle(
                  color:Colors.white,
                  fontSize: 20
                )
              );
            }
          )
        ],
      ),
    );
  }
}