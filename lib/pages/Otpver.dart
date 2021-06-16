import 'package:flutter/material.dart';

class Otpver extends StatefulWidget {
  @override
  _Otpver createState() => _Otpver();
}

class _Otpver extends State<Otpver> {
  final formkey = GlobalKey<FormState>();
  var otp;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: <Widget>[
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
          margin: EdgeInsets.only(top: 60.0),
          child: Text(
            "Enter the OTP",
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: 40.0, color: Color(0xFF24964A)),
          )),
      Form(
          key: formkey,
          child: Column(
            children: <Widget>[
              Container(
                  margin:
                      const EdgeInsets.only(left: 16.0, right: 16.0, top: 60.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Enter the OTP',
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
                      otp = value;
                    },
                    validator: (value) {
                      if (value == null || value == "") {
                        return "Please Enter the OTP";
                      }
                    },
                  )),
              SizedBox(
                height: 60.0,
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
                      print(otp);
                    }
                  },
                  child: Text(
                    "SUBMIT",
                    style: TextStyle(color: Colors.white, fontSize: 40.0),
                  ))
            ],
          )),
    ]));
  }
}
