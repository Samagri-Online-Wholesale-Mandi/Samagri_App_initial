import 'package:flutter/material.dart';
import 'package:home_page/pages/SideDrawerPages/FaqPage/FaqCategories.dart';

import '../../../BottomNavigation.dart';

class FaqBody extends StatelessWidget {
  const FaqBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
        ),
        backgroundColor: Colors.green[800],
        toolbarHeight: 200,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.green[100],
            size: 40,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            text:"Frequently Asked Questions",
            style: TextStyle(
              fontSize: 38,
              fontWeight: FontWeight.bold,
              height: 1.5
            )
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: FaqCategories(),
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
