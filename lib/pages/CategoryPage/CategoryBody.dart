import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_page/Models/Product.dart';
import 'package:home_page/pages/home_page/appBar.dart';

import 'CategoryContent.dart';

class CategoryBody extends StatelessWidget {
  final Product product;
  const CategoryBody({
    Key? key,
    required this.product
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.green[100],
            size: 40,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          "Choose Type",
          style: TextStyle(
            fontSize: 25,
          ),
        ),
        actions: [
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.call),
            color: Colors.green,
            iconSize: 40,
          ),
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.shopping_cart),
            iconSize: 40,
            color: Colors.yellowAccent,
          ),
        ],
      ),
      body: CategoryContent(product: product,),
    );
  }
}
