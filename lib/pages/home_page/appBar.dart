import 'package:flutter/material.dart';

AppBar appbar() {
  return AppBar(
    toolbarHeight: 70,
    backgroundColor: Colors.black,
    elevation: 0,
    leading: Builder(
      builder: (context) => IconButton(
        icon: Icon(
          Icons.menu_rounded,
          size: 35,
        ),
        onPressed: () => Scaffold.of(context).openDrawer(),
      ),
    ),
    title: Text(
      "Select Commodity",
      style: TextStyle(
        fontSize: 25,
      ),
    )
  );
}

