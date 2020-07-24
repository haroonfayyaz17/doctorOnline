import 'package:doctorapp/Profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SetupProfileClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: new SetupProfile(),
    );
  }
}

DateTime _date = DateTime.now();

class SetupProfile extends StatelessWidget {
  bool _checkBoxVal = true;
  String _selectedGender;
  List<String> _gender = ['Male', 'Female']; // List for the options for Gender
  final _dateController = TextEditingController();
  final _genderController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    _genderController.text = 'Please Select a Gender';
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
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100.0),
                    child: Image.asset("images/consult.jpeg"),
//                  padding: new EdgeInsets.all(10.0),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(0.0),
            child: Text(
              'SetUp Profile',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontFamily: 'Oxygen'),
            ),
          ),
          Container(
              padding: EdgeInsets.all(10.0),
              child: TextFormField(
                  textCapitalization: TextCapitalization.words,
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    filled: false,
                    hintText: 'First Name',
                  ))),
          Container(
              padding: EdgeInsets.all(10.0),
              child: TextFormField(
                  textCapitalization: TextCapitalization.words,
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    filled: false,
                    hintText: 'Last Name',
                  ))),
          Container(
              child: DropdownButton(
            hint: Container(
                width: 180,
                child: TextField(
                  controller: _genderController,
                )),
            value: _selectedGender,
            onChanged: (newValue) {
              _genderController.text = newValue;
              setState(() {
                _selectedGender = newValue;
              });
            },
            items: _gender.map((gender) {
              return DropdownMenuItem(
                child: new Text(gender),
                value: gender,
              );
            }).toList(),
          )),
          Container(
              child: TextFormField(
            controller: _dateController,
            readOnly: true,
            autovalidate: true,
            onTap: () {
              showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2018),
                lastDate: DateTime(2025),
              ).then((value) {
                String day = value.day.toString();
                String month = value.month.toString();
                String year = value.year.toString();
                _dateController.text = "$day-$month-$year";
              });
            },
            decoration: InputDecoration(
                hintText: 'Select Date Of Birth',
                icon: Icon(Icons.calendar_today),
                labelStyle: TextStyle(fontSize: 12)),
          )),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Row(
              children: <Widget>[
                Container(child: CheckBoxClass()),
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
                ),
              ],
            ),
          ),
          Container(
              width: 250,
              padding: EdgeInsets.all(20.0),
              child: RaisedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => ProfileClass()));
                },
                color: Color(0xff4e45ff),
                child: Text(
                  'Save And Continue',
                  style: TextStyle(
                      fontFamily: 'Oxygen',
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                padding: const EdgeInsets.all(0),
              ))
        ],
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
