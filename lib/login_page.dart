import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginPage extends StatefulWidget {
  @override
  //static String tag = "login-page";
  State<StatefulWidget> createState() => return _LoginPage();
}

class _LoginPage extends State<LoginPage> {
  String _email;
  String _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: new Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              new TextFormField(
                decoration: new InputDecoration(labelText: 'Email'),
              ),
              new TextFormField(
                decoration: new InputDecoration(labelText: 'Password'),
              ),
              RaisedButton(onPressed: () {},
                child: Text('Log In'),textColor: const Color(0xFFFFFFFF),
                color: const Color.fromRGBO(175,151,105,1.0),)
            ],
          )
        ),
      )
    );
  }
}