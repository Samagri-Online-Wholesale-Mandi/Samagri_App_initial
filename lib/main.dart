
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_page/Models/Product.dart';

import 'pages/home_page/appBar.dart';
import 'pages/home_page/body.dart';
import 'side_menu.dart';

void main() {
  runApp(MaterialApp(
    home: Home_page(),
  ));
}

class Home_page extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(),
      drawer: sideMenu(),
      body: Container(
        color: Colors.grey[900],
        child: Body(),
      ),
    );
  }
}





