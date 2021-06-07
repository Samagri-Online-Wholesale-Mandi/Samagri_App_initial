import 'package:flutter/material.dart';

AppBar appbar() {
  return AppBar(
    backgroundColor: Colors.black,
    elevation: 0,
    title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 20,
            ),
          ),
          SizedBox(width: 20,),
          Expanded(
            flex: 5,
            child: Padding(
              padding: EdgeInsets.all(5),
              child: Text(
                "Select commodity",
              ),
            ),
          ),
          Expanded(
            child: IconButton(onPressed: () {},
              icon: Icon(Icons.shopping_cart),
              iconSize: 30,
            ),
          ),
        ]
    ),
    centerTitle: true,
  );
}