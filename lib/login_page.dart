import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'sign_up.dart';
import 'main.dart' show HomePage;

//import 'package:firebase_auth/firebase_auth.dart';



class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _LoginPage();
}

class _LoginPage extends State<LoginPage> {
  String _email;
  String _password;

  final formKey = new GlobalKey<FormState>();

  bool validateAndSave(){
    final form = formKey.currentState;
    if (form.validate()){
      form.save();
      return true;
    }
    return false;
  }

  //async since you need to wait for response from firebase
  void validateAndSubmit() async {
    if (validateAndSave()){
      FirebaseUser user = await FirebaseAuth.instance.signInWithEmailAndPassword(email: _email, password: _password);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: new Form(
          key: formKey,
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              new TextFormField(
                decoration: new InputDecoration(labelText: 'Email')
              ),
              new TextFormField(
                decoration: new InputDecoration(labelText: 'Password'),
                obscureText: true,
              ),
              new RaisedButton(onPressed: () {},
                child: Text('Log In'),textColor: const Color(0xFFFFFFFF),
                color: const Color.fromRGBO(175,151,105,1.0)),
              new RaisedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpPage()));},
              child: Text("Don't have an account? Sign Up"),textColor: const Color(0xFFFFFFFF),
                  color: const Color.fromRGBO(175,151,105,1.0)
              ),
              new FlatButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));},
                  child: Text('Return Home'))
            ],
          )
        ),
      )
    )
    );
  }
}