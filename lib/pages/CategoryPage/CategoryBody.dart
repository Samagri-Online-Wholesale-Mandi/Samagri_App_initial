import 'package:flutter/material.dart';
import 'package:home_page/Models/Product.dart';
import 'package:home_page/pages/home_page/appBar.dart';

class CategoryBody extends StatelessWidget {
  final Product product;
  const CategoryBody({
    Key? key,
    required this.product
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(),
    );
  }
}
