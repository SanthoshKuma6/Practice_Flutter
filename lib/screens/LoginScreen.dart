import 'package:flutter/material.dart';
import '../components/Login_Components.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.grey,
              Colors.grey,
              Colors.grey,
            ],
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(20),
              width: MediaQuery.of(context).size.width * 0.85,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      hintText: "Enter your Email",
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      hintText: "Enter your Password",
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Forget Password",
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                      SizedBox(width: 10),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Button(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
