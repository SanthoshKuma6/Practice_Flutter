import 'package:flutter/material.dart';

  class SignUpScreen extends StatefulWidget {
    @override
    _SignUpScreenState createState() => _SignUpScreenState();
  }
  class _SignUpScreenState extends State<SignUpScreen> {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(backgroundColor: Colors.black,),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: Container(
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                        bottomLeft: Radius.circular(50)
                    )
                ),
                width: double.infinity,
                alignment: Alignment.center,
                margin: EdgeInsets.only(bottom: 500),
              )),

            ],
          ),
        )
      );
    }
  }
