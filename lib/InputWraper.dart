import 'package:flutter/material.dart';

import 'Button.dart';
import 'InputFiled.dart';

class InputWraper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.all(30),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 40,
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: InputFiled(),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            "Forgot Password",
            style: TextStyle(color: Colors.grey),
          ),
          SizedBox(height: 40,),
          Button()
        ],
      ),
    );
  }
}
