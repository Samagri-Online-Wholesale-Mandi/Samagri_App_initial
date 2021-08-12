import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_core/firebase_core.dart';
// import 'package:home_page/Models/Product.dart';

import '../../BottomNavigation.dart';
import 'appBar.dart';
import 'body.dart';
import '../../sideDrawer.dart';

class TempHome extends StatelessWidget{

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