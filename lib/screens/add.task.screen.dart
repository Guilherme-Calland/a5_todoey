import 'package:a5_todoey/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/animator_widget.dart';
import 'package:flutter_animator/widgets/sliding_entrances/slide_in_up.dart';

class AddTaskScreen extends StatelessWidget {

  final GlobalKey<AnimatorWidgetState> slideInUpKey =
  GlobalKey<AnimatorWidgetState>();

  @override
  Widget build(BuildContext context) {
    return SlideInUp(
      key: slideInUpKey,
        child: Transform.translate(
        offset: Offset(0, -100),
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(20)
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                ),
              ],
            ),
            padding: EdgeInsets.all(15),
            height: 210,
            width: 300,
            child: Center(
              child: Material(
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    Text(
                      'Add Task',
                      style: TextStyle(
                        color: todoeyTheme,
                        fontSize: 25,
                        fontWeight: FontWeight.w900
                      )
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      // autofocus: true,
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(   
                        enabledBorder: UnderlineInputBorder(      
                          borderSide: BorderSide(color: todoeyTheme),   
                        ),  
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: todoeyTheme),
                        ),
                        // border: UnderlineInputBorder(
                        //   borderSide: BorderSide(color: todoeyTheme),
                        // ),
                      ),
                      onChanged: (newValue){},
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    FlatButton(
                      color: todoeyTheme,
                      padding: EdgeInsets.all(5),
                      child: Text(
                        'Add',
                        style: TextStyle(
                          color: Colors.white
                        )
                      ),
                      onPressed: (){},
                    )
                  ],
                )
              )          
            )
          ),
        ),
      ),
    );
  }
}
