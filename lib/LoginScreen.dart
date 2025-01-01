import 'package:flutter/material.dart';
import 'Header.dart';
import 'InputWraper.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topCenter, colors: [
          Colors.cyan,
          Colors.cyan,
          Colors.cyan,
        ])
        ),

        child: Column(
          children: <Widget>[
            SizedBox(height: 80,),
            Header(),
            Expanded(child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(60),
                  topRight: Radius.circular(60),
                ),

              ),
              child: InputWraper(),
            ))
          ],
        ),
      ),
    );
  }
}
