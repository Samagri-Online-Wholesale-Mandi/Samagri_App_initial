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
    Size size = MediaQuery.of(context).size*0.8;
    return SingleChildScrollView(
      physics: ClampingScrollPhysics(),
        child: Column(    //column of body search bar and scroll bars for different commodities
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