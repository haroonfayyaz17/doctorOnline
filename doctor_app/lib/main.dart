import 'package:doctorapp/Chat_List.dart';
import 'package:doctorapp/Chat_Screen.dart';
import 'package:doctorapp/Register.dart';
import 'package:doctorapp/SetupProfile.dart';
import 'package:doctorapp/appointment.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        //'/signup': (BuildContext context) => new SignupPage(),
        //'/otostop': (BuildContext context) => new OtoStop7Temp()
        // '/otostop': (BuildContext context) => new Message()
      },
      home: new Login(),
    );
  }
}

class Login extends StatefulWidget {
  @override
  _Login createState() => new _Login();
}

class _Login extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Stack(
        children: <Widget>[
          Container(
            width: 375.0,
            height: 812.0,
            decoration: BoxDecoration(
              color: const Color(0xffffffff),
            ),
          ),
          Container(
            width: 375.0,
            height: 812.0,
            decoration: BoxDecoration(
              color: const Color(0xffffffff),
            ),
          ),
          Container(
            width: 375.0,
            height: 812.0,
            decoration: BoxDecoration(
              color: const Color(0xffffffff),
            ),
          ),
          Transform.translate(
              //Used to display Doctor's Logo
              offset: Offset(79.0, 60.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: 250.0,
                    height: 150.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: const AssetImage('images/consult.jpeg'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
              )),
          Transform.translate(
              //Used to display Login Logo
              offset: Offset(155.0, 210.0),
              child: Column(
                children: <Widget>[
                  Container(
                    child: Text(
                      'Login', //Login logo
                      style: TextStyle(
                        fontFamily: 'Oxygen',
                        fontSize: 30,
                        color: const Color(0xff707070),
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  )
                ],
              )),
          Transform.translate(
              //Used to display textbox and hint for email/username
              offset: Offset(15, 270),
              child: Column(
                children: <Widget>[
                  Container(
                      child: TextFormField(
                    textCapitalization: TextCapitalization.words,
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      filled: false,
                      icon: Icon(Icons.email),
                      hintText: 'Username/Email',
                    ),
                    textAlign: TextAlign.left,
                  ))
                ],
              )),
          Transform.translate(
              //Used to display textbox and hint for Password
              offset: Offset(15, 360),
              child: Column(
                children: <Widget>[
                  Container(
                      child: TextFormField(
                    textCapitalization: TextCapitalization.words,
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      filled: false,
                      icon: Icon(Icons.lock),
                      hintText: 'Password',
                    ),
                    textAlign: TextAlign.left,
                  ))
                ],
              )),
          Transform.translate(
            //Used to display Login Button
            offset: Offset(90.0, 450.0),
            child: Column(
              children: <Widget>[
                RaisedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => SetupProfileClass()));
                  },
                  textColor: Colors.white,
                  padding: const EdgeInsets.all(0.0),
                  child: Container(
                    width: 220,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: <Color>[
                          const Color(0xff3126c9),
                          const Color(0xff857dfa)
                        ],
                      ),
                    ),
                    padding: const EdgeInsets.all(10.0),
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        fontFamily: 'Oxygen',
                        fontSize: 14,
                        color: const Color(0xffffffff),
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
              ],
            ),
          ),
          Transform.translate(
              //Used to display "Do not have an Account?" label
              offset: Offset(85.0, 550.0),
              child: Column(
                children: <Widget>[
                  Container(
                    child: Text(
                      'Do not have an account?',
                      style: TextStyle(
                        fontFamily: 'Oxygen',
                        fontSize: 16,
                        color: const Color(0xff6e6e6e),
                      ),
                      textAlign: TextAlign.left,
                    ),
                  )
                ],
              )),
          Transform.translate(
              //Used to display "Register" label when pressed
              offset: Offset(250.0, 535.0),
              child: Column(
                children: <Widget>[
                  Container(
                    child: FlatButton(
                      child: Text(
                        'Register',
                        style: TextStyle(
                          fontFamily: 'Oxygen',
                          fontSize: 16,
                          color: const Color(0xff4585fe),
                        ),
                        textAlign: TextAlign.left,
                      ),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => SignUpClass()));
                      },
                    ),
                  )
                ],
              ))
        ],
      ),
    );
  }
}
