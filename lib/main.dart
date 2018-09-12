import 'package:flutter/material.dart';

void main() => runApp(SeidoAudioBook());

//Base of the app starting with the MaterialApp widget
class SeidoAudioBook extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(71,88,123,1.0),
          title: Text('Seido AudioBooks',
              style: new TextStyle(fontWeight: FontWeight.bold),
              textAlign: TextAlign.left),
        ),
        body: Center(
            child: Container(
          child: Column(
            children: <Widget>[
              Image.asset('assets/images/seidologo.jpg',),

              Text ('Human Face of Karate',
                  style: new TextStyle(fontWeight: FontWeight.bold)),

              RaisedButton(onPressed: () {},
              child: Text('Login'), textColor: const Color(0xFFFFFFFF),
              color: const Color.fromRGBO(175,151,105,1.0)),

              RaisedButton(onPressed: () {},
                  child: Text('Sign Up'),textColor: const Color(0xFFFFFFFF),
                  color: const Color.fromRGBO(175,151,105,1.0)),
            ],
          ),
        ),
      )
      )
    );
  }

}