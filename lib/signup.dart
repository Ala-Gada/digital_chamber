
import 'login.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomInset: false,

      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/screen4.jpg"),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              getCard(),
            ] ),
      ),
    );
  }

  TextEditingController _emailController = TextEditingController();

  TextEditingController _passwordController = TextEditingController();

  getCard() {
    return Container(
      padding: EdgeInsets.all(25.0),
      decoration: BoxDecoration(color: Colors.white,
          borderRadius:BorderRadius.only(topLeft: Radius.circular(20.5),topRight: Radius.circular(14.5)) ),

      child:  Column(

        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 0.0) ,
            child:  TextField(
              controller: _emailController,
              decoration: InputDecoration(
                  labelText: 'Email'
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20.0) ,
            child: TextField(
              //  controller: _passwordController,
              decoration: InputDecoration(
                labelText: 'Password',
                hintStyle: TextStyle(color: Color(0xff76787D)),
              ),
              obscureText: true,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20.0,bottom: 40.0) ,
            child: TextField(
              //  controller: _passwordController,
              decoration: InputDecoration(
                labelText: 'Re-Enter Password',
                hintStyle: TextStyle(color: Color(0xff76787D)),
              ),
              obscureText: true,
            ),
          ),
          RaisedButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(7)),
            textColor: Colors.white,
            color:Color(0xffFD5621),
            child: Text('Sign Up'),
            onPressed: () {
              //go through validations and ...
              print(_emailController.text);
              print(_passwordController.text);
            },
          ),

          Container(
              padding: const EdgeInsets.all(0.0),

              child: Row(
                children: <Widget>[
                  Text('Already have an account?',
                    style: TextStyle(
                        color:Color(0xffA5A8A7)
                    ),
                  ),

                  FlatButton(
                    textColor: Colors.red,
                    child: Text(
                      'Sign in',
                      style: TextStyle(fontSize: 15),
                    ),
                    onPressed: () {
                      LoginScreen();
                    },
                  )
                ],

              )
          ),
        ],
      ),
    );
  }
}
