import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _SignUpPage();
}

class _SignUpPage extends State<SignUpPage> {

  String _memberID;
  String _email;
  String _password;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: Container(
          padding: EdgeInsets.all(10.0),
        child: new Form(
            child: Column(
              children: <Widget>[
                new TextFormField(
                  decoration: new InputDecoration(labelText: 'Member ID')
                ),
                new TextFormField(
                  decoration: new InputDecoration(labelText: 'Email')
                ),
                new TextFormField(
                  decoration: new InputDecoration(labelText: 'Password'),
                  obscureText: true
                ),
              RaisedButton(onPressed: () {},
                  child: Text('Create Account'),textColor: const Color(0xFFFFFFFF),
                  color: const Color.fromRGBO(175,151,105,1.0),)
              ],
            ))
      )
    );
  }
}