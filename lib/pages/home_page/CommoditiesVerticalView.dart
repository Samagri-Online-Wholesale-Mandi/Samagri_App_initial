import 'package:flutter/material.dart';
import 'package:home_page/Models/Product.dart';

import 'EachCommoditiesHorizantalView.dart';

class horizantalScrollViews extends StatelessWidget {
  final List<Product> products;
  const horizantalScrollViews( {
    required this.products,
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(12)
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "${products[0].type}",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: SizedBox(
                height: 170,
                child: ListView.builder(
                  itemCount: products.length,
                  physics: ClampingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) =>
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: itemCard(
                          product: products[index],
                        ),
                      ),
                ),
              ),
            ),
          ),
        ]
      ),
    );
  }
}
