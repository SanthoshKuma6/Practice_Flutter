import 'package:flutter/material.dart';
import '../components/Login_Components.dart';
import 'ForgetScreen.dart';
import 'HomeScreen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return "Email can't be empty";
    }
    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!emailRegex.hasMatch(value)) {
      return "Enter a valid email address";
    }
    return null;
  }

  String _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return "Password can't be empty";
    }
    if (value.length != 6) {
      return "Password must be exactly 6 digits";
    }
    if (!RegExp(r'^\d+$').hasMatch(value)) {
      return "Password must contain only digits";
    }
    return "";
  }

  void _submit() {
    if (_formKey.currentState!.validate()) {
      print("Submit button clicked!"); // Debug print
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Validation successful! Navigating to Home...")),
      );
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()), // Navigate to Home
      );
      _emailController.clear();
      _passwordController.clear();
    }
  }
 void _submitForget() {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => ForgetScreen()), // Navigate to Home
      );

  }


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
              child:

              Form(
                key: _formKey, // Use GlobalKey
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    EmailTextField(
                        emailController: _emailController,
                        validator: _validateEmail,
                        emailTextLabel: "Enter your Email"),
                    SizedBox(height: 10),
                    PasswordFiled(
                      passwordController: _passwordController,
                      validator: _validatePassword,
                      PasswordTextLabel: "Enter your Password",
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SimpleText(textLabel: "Forget Password",onPress: _submitForget),
                        SizedBox(width: 10),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Button(
                      onPress: _submit, // Link to the _submit method
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
