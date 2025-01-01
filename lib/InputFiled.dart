import 'package:flutter/material.dart';

class InputFiled extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Colors.grey
              )
            )
          ),
          child: TextField(
            decoration: InputDecoration(
              hintText: "Enter your Email",
              hintStyle: TextStyle(color: Colors.grey),
              border: InputBorder.none

            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(
                      color: Colors.grey
                  )
              )
          ),
          child: TextField(
            decoration: InputDecoration(
                hintText: "Enter your Password",
                hintStyle: TextStyle(color: Colors.grey),
                border: InputBorder.none

            ),
          ),
        ),

      ],
    );
  }
}