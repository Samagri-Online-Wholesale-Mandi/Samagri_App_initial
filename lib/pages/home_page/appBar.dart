import 'package:flutter/material.dart';

AppBar appbar() {
  return AppBar(
    toolbarHeight: 80,
    backgroundColor: Colors.black,
    elevation: 0,
    // leading: Padding(
    //   padding: const EdgeInsets.only(left:8.0),
    //   child: CircleAvatar(
    //     backgroundColor: Colors.white,
    //   ),
    // ),
    title: Text(
      "Select Commodity",
      style: TextStyle(
        fontSize: 22
      ),
    ),
    actions: [
      IconButton(onPressed: (){}, icon: Icon(Icons.call),iconSize: 40,color: Colors.green,),
      IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart),iconSize: 40, color: Colors.yellowAccent,),
    ],
  );
}