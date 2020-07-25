import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class DentistSetupProfile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    debugShowCheckedModeBanner: false;
    return MaterialApp(
      home: new _DentistSetProfile(),
    );
  }

}


class _DentistSetProfile extends StatelessWidget{
  bool _checkBoxVal = true;
  String _selectedGender;
  String _selectedtype;
  String _selectedcity;
  String _selectedstate;
  String _selectedcountry;
  List<String> _gender = ['Male', 'Female'];
  List<String> _country = ['Pakistan', 'India', 'UK', 'USA'];
  List<String> _state = ['North Carolina', 'Nevada','Punjab','Sindh','UP'];
  List<String> _city = ['Lahore', 'New York','Pittsburgh','Mumbai'];

  final _genderController = TextEditingController();
  final _countryController = TextEditingController();
  final _cityController = TextEditingController();
  final _stateController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    _genderController.text = 'Please Select a Gender';

    _countryController.text='Select Country';
    _cityController.text='Select City';
    _stateController.text='Select State';

    // TODO: implement build
    return Scaffold(
        body: SingleChildScrollView(
          child: SafeArea(
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
                Container(
                  padding: EdgeInsets.all(0.0),
                  child: Text('DENTIST',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontFamily: 'Oxygen'
                    ),),

                ),
                Container(
                  padding: EdgeInsets.all(0.0),
                  child: Text('SetUp Profile',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontFamily: 'Oxygen'
                    ),),

                ),
                Container(
                    padding: EdgeInsets.all(2.0),
                    child: TextFormField(
                        textCapitalization: TextCapitalization.words,
                        decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                          filled: false,
                          hintText: 'First Name',
                        )
                    )
                ),

                Container(
                    padding: EdgeInsets.all(2.0),
                    child: TextFormField(
                        textCapitalization: TextCapitalization.words,
                        decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                          filled: false,
                          hintText: 'Last Name',
                        )
                    )
                ),
                Container(
                    padding: EdgeInsets.all(2.0),

                    child: TextFormField(
                        textCapitalization: TextCapitalization.words,
                        decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                          filled: false,
                          hintText: 'Phone Number',
                        )
                    )
                ),
                Container(
                    padding: EdgeInsets.all(2.0),
                    child: TextFormField(
                        textCapitalization: TextCapitalization.words,
                        decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                          filled: false,
                          hintText: 'Office Address',
                        )
                    )
                ),
                Container(
                    padding: EdgeInsets.all(2.0),
                    child: TextFormField(
                        textCapitalization: TextCapitalization.words,
                        decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                          filled: false,
                          hintText: 'Years of Practice',
                        )
                    )
                ),
                Container(
                    padding: EdgeInsets.all(2.0),
                    child: TextFormField(
                        textCapitalization: TextCapitalization.words,
                        decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                          filled: false,
                          hintText: 'Bried Description',
                        )
                    )
                ),

                Container(
                  constraints: BoxConstraints(
                    minWidth: 300,
                    maxWidth: MediaQuery.of(context).size.width - 10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        child: DropdownButton(
                          hint: Container(
                              width: 110,
                              child: TextField(
                                controller: _countryController,
                              )),
                          value: _selectedcountry,
                          onChanged: (newValue) {
                            _countryController.text = newValue;
                            setState(() {
                              _selectedcountry = newValue;
                            });
                          },
                          items: _country.map((country) {
                            return DropdownMenuItem(
                              child: new Text(country),
                              value: country,
                            );
                          }).toList(),
                        ),
                      ),
                      Container(
                        child: DropdownButton(
                          hint: Container(

                              width: 90,
                              child: TextField(
                                controller: _cityController,
                              )),
                          value: _selectedcity,
                          onChanged: (newValue) {
                            _cityController.text = newValue;
                            setState(() {
                              _selectedcity = newValue;
                            });
                          },
                          items: _city.map((city) {
                            return DropdownMenuItem(
                              child: new Text(city),
                              value: city,
                            );
                          }).toList(),
                        ),
                      ),
                      Container(

                        child: DropdownButton(
                          hint: Container(
                              width: 100,
                              padding: const EdgeInsets.all(1.0),
                              child: TextField(
                                controller: _stateController,
                              )),
                          value: _selectedstate,
                          onChanged: (newValue) {
                            _stateController.text = newValue;
                            setState(() {
                              _selectedstate = newValue;
                            });
                          },
                          items: _state.map((state) {
                            return DropdownMenuItem(
                              child: new Text(state),
                              value: state,
                            );
                          }).toList(),
                        ),
                      )
                    ],
                  ),
                ),
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
                    )
                ),

                Container(
                  padding: EdgeInsets.all(5.0),
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
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: <Widget>[
                      Container(
                          width: 200,
                          padding: EdgeInsets.all(5.0),
                          child: RaisedButton(
                            onPressed: (){},
                            color: Color(0xff4e45ff),
                            child: Text('Upload Certificate',
                              style: TextStyle(
                                  fontFamily: 'Oxygen',
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white
                              ),),
                            padding: const EdgeInsets.all(0),
                          )
                      ),
                      Container(
                          width: 200,
                          padding: EdgeInsets.all(5.0),
                          child: RaisedButton(
                            onPressed: (){},
                            color: Color(0xff4e45ff),
                            child: Text('Save and Continue',
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
                )
              ],
            ),
          ),
        )

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