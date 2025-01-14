import 'package:flutter/material.dart';


class SimpleText extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Container(
          child:
          Text("Forget Password",style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.bold
          ),),

        )
      ],
    );
  }
}

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

class EmailTextField extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Container(
      padding: EdgeInsets.all(20),
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
        )
      ],
    );
  }
}


class PasswordFiled extends StatelessWidget{
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
