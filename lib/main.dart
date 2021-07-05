import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:home_page/Models/Product.dart';

import 'BottomNavigation.dart';
import 'pages/Commodity_page/appBar.dart';
import 'pages/Commodity_page/body.dart';
 import 'sideDrawer.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.grey[700],
  ));
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CommodityHomePage(),
    )
  );
}

class CommodityHomePage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value:  SystemUiOverlayStyle.light,
      child: Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: appbar(),
        drawer: sideDrawer(),
        body: Body(),
        bottomNavigationBar: BottomNavigation(),
        )
    );
  }
}




