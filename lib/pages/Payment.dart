import 'package:flutter/material.dart';

class Payment extends StatefulWidget {
  @override
  _Payment createState() => _Payment();
}

class _Payment extends State<Payment> {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff131417),
      body: Column(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            child: Text(
              "Your Total is",
              textAlign: TextAlign.center,
              style: TextStyle(color: Color(0xffffffff), fontSize: 30),
            ),
          ),
          Container(
            height: 10,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Text(
              "Enter Card Details",
              textAlign: TextAlign.center,
              style: TextStyle(color: Color(0xffffffff), fontSize: 30),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  height: 10,
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelStyle: TextStyle(color: Colors.white),
                      labelText: 'Enter Card Number',
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
                  ),
                ),
                Container(
                  height: 10,
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelStyle: TextStyle(color: Colors.white),
                      labelText: 'Enter Name on Card',
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
                  ),
                ),
                Container(
                  height: 10,
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(100, 0, 100, 0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelStyle: TextStyle(color: Colors.white),
                      labelText: 'Enter Expiry Date',
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
                  ),
                ),
                Container(
                  height: 10,
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(100, 0, 100, 0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Enter CVV',
                      labelStyle: TextStyle(color: Colors.white),
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
                  ),
                ),
                //Debit CArd
                Text(
                  "OR",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
                Container(
                  height: 60.0,
                  width: 160,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Color(0xff24964A)),
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: Text(
                          "Google Pay",
                          style: TextStyle(color: Color(0xffffffff)),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: Image.asset(
                          'google-pay.png',
                          height: 50.0,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 10,
                ),
                Container(
                  height: 60.0,
                  width: 160,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Color(0xff24964A)),
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: Text(
                          "Phone Pay",
                          style: TextStyle(color: Color(0xffffffff)),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: Image.asset(
                          'phone-pe.png',
                          height: 50.0,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
          //Debit Card

          //Credit Card
          //Google Pay
          //Phone Pay
        ],
      ),
    );
  }
}
