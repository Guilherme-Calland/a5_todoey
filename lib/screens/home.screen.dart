import 'package:a5_todoey/resources/resources.dart';
import 'package:a5_todoey/screens/tasks.screen.dart';
import 'package:a5_todoey/screens/title.screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: todoeyTheme,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TitleScreen(),
          TasksScreen(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: todoeyTheme,
        child: Icon(Icons.add),
        onPressed: (){
          showModalBottomSheet(
            context: context, 
            builder: (BuildContext context){
              return SingleChildScrollView(
                padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
                child: Container(
                  color: Color(0xff757575),
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      border: Border.all(color: todoeyTheme),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)
                      ),
                      color: todoeyTheme,
                      
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Add Task',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w900
                          )
                        )
                      ],
                    )
                  ),
                )
              );
            }
          );
        },
      ),
    );
  }
}



