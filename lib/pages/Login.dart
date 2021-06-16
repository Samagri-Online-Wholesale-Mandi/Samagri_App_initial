import 'package:flutter/material.dart';
import 'Otpver.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final formkey = GlobalKey<FormState>();
  var _num;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: Color(0xFF24964A),
          ),
          height: MediaQuery.of(context).size.height / 12,
          width: MediaQuery.of(context).size.width,
        ),
        Container(
          decoration: BoxDecoration(
              color: Color(0xFF24964A),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(100.0),
                  bottomRight: Radius.circular(100.0))),
          height: MediaQuery.of(context).size.height / 12,
          width: MediaQuery.of(context).size.width,
        ),
        Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
            margin: EdgeInsets.only(top: 50.0),
            child: Text(
              "Welcome",
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40.0,
                  color: Color(0xFF24964A)),
            )),
        //Form
        Form(
            key: formkey,
            child: Column(
              children: <Widget>[
                Container(
                    margin: const EdgeInsets.only(
                        left: 16.0, right: 16.0, top: 50.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Enter your Number',
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xFF24964A), width: 2.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFF24964A),
                            width: 1.0,
                          ),
                        ),
                      ),
                      onSaved: (value) {
                        _num = value;
                      },
                      validator: (value) {
                        if (value == null || value == "") {
                          return "Please Enter Phone Number";
                        }
                      },
                    )),
                SizedBox(
                  height: 50.0,
                ),
                FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100.0),
                    ),
                    padding: EdgeInsets.only(
                        left: 30.0, right: 30.0, top: 5.0, bottom: 5.0),
                    color: Color(0xFF24964A),
                    onPressed: () {
                      if (formkey.currentState!.validate()) {
                        formkey.currentState!.save();
                        print(_num);
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Otpver()));
                      }
                    },
                    child: Text(
                      "SUBMIT",
                      style: TextStyle(color: Colors.white, fontSize: 40.0),
                    ))
              ],
            )),
        Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
            margin: EdgeInsets.only(top: 50.0),
            child: Text(
              "ನಮಸ್ಕಾರ",
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40.0,
                  color: Color(0xFF24964A)),
            )),
        Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
            margin: EdgeInsets.only(top: 50.0),
            child: Text(
              "नमस्ते",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40.0,
                  color: Color(0xFF24964A)),
            )),
      ],
    ));
  }
}
