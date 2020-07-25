import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(SignUpClass());
}

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
  List<String> _type = ['Doctor', 'Patient'];
  String _selectedtype;
  final _typeController = TextEditingController();
  bool _checkBoxVal = true;
  @override
  Widget build(BuildContext context) {
    _typeController.text='Account Type';
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                height: 120,
                margin: EdgeInsets.fromLTRB(0, 25, 0, 10),
                child: ClipRRect(
                  child: Image.asset("images/dr.jpeg"),
//                  padding: new EdgeInsets.all(10.0),
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
                  child: DropdownButton(
                    hint: Container(
                        width: 150,
                        child: TextField(
                          controller: _typeController,
                        )),
                    value: _selectedtype,
                    onChanged: (newValue) {
                      _typeController.text = newValue;
                      setState(() {
                        _selectedtype = newValue;
                      });
                    },
                    items: _type.map((type) {
                      return DropdownMenuItem(
                        child: new Text(type),
                        value: type,
                      );
                    }).toList(),
                  )
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CheckBoxClass(),
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
        ),
      ),

    );
  }

  void setState(Null Function() param0) {}
}

class CheckBoxClass extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CheckBox();
}

class _CheckBox extends State<StatefulWidget> {
  bool _checkBoxVal = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Checkbox(
      value: _checkBoxVal,
      activeColor: Colors.orange,
      onChanged: (newValue) {
        setState(() {
          _checkBoxVal = newValue;
        });
      },
    );
  }
}