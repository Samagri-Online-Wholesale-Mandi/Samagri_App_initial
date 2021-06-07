import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_page/Models/Product.dart';

import 'CommoditiesVerticalView.dart';

import 'main.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
        padding: EdgeInsets.all(5),
        child: Column(    //column of body search bar and scroll bars for different commodities
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Center(
                child: searchBar(),
              ),
            ),
            SizedBox(
              height: size.height,
              child: ListView.builder(
                physics: ClampingScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemCount: productNames.length,
                itemBuilder: (context,index1) =>
                    horizantalScrollViews(products:productNames[index1])
              ),
            ),
          ],
        ),
    );
  }
}