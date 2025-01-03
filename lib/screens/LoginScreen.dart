import 'package:flutter/material.dart';

import '../components/Login_Components.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topCenter, colors: [
          Colors.grey,
          Colors.grey,
          Colors.grey,
        ])
        ),

        child: Column(
          children: <Widget>[
            SizedBox(height: 30,),
            Header(),
            Expanded(child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
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
