import 'package:flutter/material.dart';

class Button extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: EdgeInsets.symmetric(horizontal: 50),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(10),

      ),
      child: Center(
        child: Text("Login",style: TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.bold
        ),),
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


class InputFiled extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
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


class InputWraper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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