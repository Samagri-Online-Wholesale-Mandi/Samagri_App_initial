import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:home_page/Models/Product.dart';

import 'pages/home_page/appBar.dart';
import 'pages/home_page/body.dart';
 import 'sideDrawer.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.grey[700],
  ));
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home_page(),
    )
  );
}

class Home_page extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value:  SystemUiOverlayStyle.light,
      child: Scaffold(
        appBar: appbar(),
        drawer: sideDrawer(),
        body: Container(
          color: Colors.grey[900],
          child: Body(),
        ),
      ),
    );
  }
}





