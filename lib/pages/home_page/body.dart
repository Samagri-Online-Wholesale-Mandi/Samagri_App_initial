import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_page/Models/Product.dart';

import 'CommoditiesVerticalView.dart';

import '../../main.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size*0.8;
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Stack(    //column of body search bar and scroll bars for different commodities
        children: [
          Padding(
            padding: EdgeInsets.only(top: 70),
            child: SizedBox(
              height: size.height,
              child: ListView.builder(
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemCount: productNames.length,
                itemBuilder: (context,index1) =>
                  horizantalScrollViews(products:productNames[index1])
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: size.width,
              color: Colors.black,
              height: 45,
              child: searchBar(),
            ),
          ),
        ],
      ),
    );
  }
}
class searchBar extends StatefulWidget {

  @override
  _searchBarState createState() => _searchBarState();
}

class _searchBarState extends State<searchBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.search),
          hintText: 'Search',
        ),
      ),
    );
  }
}


