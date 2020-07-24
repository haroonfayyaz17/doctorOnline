import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class SignUpClass extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: new Signup(),
    );
  }

}

class Signup extends StatelessWidget{
  bool _checkBoxVal = true;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            height: 200,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(10.0),
                  width: 300,
                  height: 200,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100.0),
                    child: Image.asset("images/consult.jpeg"),
//                  padding: new EdgeInsets.all(10.0),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            child: Text('SignUp',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontFamily: 'Oxygen'
              ),),

          ),
          Container(
              padding: EdgeInsets.all(10.0),
              child: TextFormField(
                  textCapitalization: TextCapitalization.words,
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    filled: false,
                    icon: Icon(Icons.email),
                    hintText: 'Email',
                  )
              )
          ),
          Container(
              padding: EdgeInsets.all(10.0),
              child: TextFormField(
                  textCapitalization: TextCapitalization.words,
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    filled: false,
                    icon: Icon(Icons.lock),
                    hintText: 'Password',
                  )
              )
          ),
          Container(
              padding: EdgeInsets.all(10.0),
              child: TextFormField(
                  textCapitalization: TextCapitalization.words,
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    filled: false,
                    icon: Icon(Icons.lock),
                    hintText: 'Confirm Password',
                  )
              )
          ),
          Container(
            child: Row(
              children: <Widget>[
                Container(
                    child: Checkbox(
                      onChanged: (bool value){
                        this._checkBoxVal = value;
                      },
                      value: !this._checkBoxVal,
                      checkColor: Colors.orange,
                    )
                ),
                Container(
                  child: Text(
                    'By creating your account, your are agree\nto our terms of use & privacy policy ',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 15,
                      color: const Color(0xff6b6b6b),
                    ),
                    textAlign: TextAlign.left,
                  ),

                )
              ],
            ),

          ),
          Container(
              width: 250,
              padding: EdgeInsets.all(20.0),
              child: RaisedButton(
                onPressed: (){},
                color: Color(0xff4e45ff),
                child: Text('SignUp',
                  style: TextStyle(
                      fontFamily: 'Oxygen',
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),),
                padding: const EdgeInsets.all(0),
              )
          )
        ],
      ),

    );
  }
}