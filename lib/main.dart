import 'package:flutter/material.dart';
import 'login_page.dart';
import 'sign_up.dart';

void main() => runApp(SeidoAudioBook());

//Base of the app starting with the MaterialApp widget
class SeidoAudioBook extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SeidoAudioBook();
  }
}

class _SeidoAudioBook extends State<SeidoAudioBook>{
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(71,88,123,1.0),
          title: Center(child: Text('Seido AudioBooks',
              style: new TextStyle(fontWeight: FontWeight.bold),
              textAlign: TextAlign.left),
          )),
        body: Center(
            child: Container(
              margin: EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              Image.asset('assets/images/seidologo.jpg',),

              Text ('World Seido Karate Audio App',
                  style: new TextStyle(fontWeight: FontWeight.bold)),

              RaisedButton(onPressed: () {
                Navigator.of(context).pushNamed(LoginPage.tag);
              },
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