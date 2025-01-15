import 'package:flutter/material.dart';

class SimpleText extends StatelessWidget {
  final String textLabel;
final VoidCallback onPress;
  SimpleText({required this.textLabel,required this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Column(
        children: [
          Text(
            textLabel,
            style: TextStyle(
                color: Colors.black, fontSize: 15, fontWeight: FontWeight.normal),
          ),
        ],
      ),
    );
  }
}

class Button extends StatelessWidget {
  final VoidCallback onPress; // Callback function

  Button({required this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress, // Add the onTap property to handle button press
      child: Container(
        height: 50,
        margin: EdgeInsets.symmetric(horizontal: 50),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            "Login",
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}


class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 150,
      child: Image.asset(
        'assets/images/header_image.png',
        fit: BoxFit.cover,
      ),
    );
  }
}


class EmailTextField extends StatelessWidget {
  final String emailTextLabel;
  final TextEditingController emailController;
  final String? Function(String?)? validator; // Validator function

  // Constructor
  EmailTextField({
    required this.emailTextLabel,
    required this.emailController,
    required this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.grey)),
          ),
          child: TextFormField(
            controller: emailController,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: emailTextLabel,
              hintStyle: TextStyle(color: Colors.grey),
              border: InputBorder.none,
            ),
            validator: validator, // Add validator here
          ),
        ),
      ],
    );
  }
}


class PasswordFiled extends StatelessWidget {
  final String PasswordTextLabel;
  final TextEditingController passwordController;
  final String Function(String?)? validator;

  PasswordFiled({required this.PasswordTextLabel, required this.passwordController,required this.validator});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.grey))),
          child: TextFormField(
            controller: passwordController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                hintText: PasswordTextLabel,
                hintStyle: TextStyle(color: Colors.grey),
                border: InputBorder.none
            ),
            validator: validator,
          ),
        ),
      ],
    );
  }
}
