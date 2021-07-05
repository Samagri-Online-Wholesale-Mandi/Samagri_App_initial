import 'package:flutter/material.dart';
import 'package:home_page/Models/Product.dart';
import 'package:home_page/pages/CategoryPage/CategoryBody.dart';

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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left:20.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.green[500],
                borderRadius: BorderRadius.circular(5)
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "${products[0].type}",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal:10,vertical: 10),
              child: SizedBox(
                height: 140,
                child: ListView.builder(
                  itemCount: products.length,
                  physics: ClampingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) =>
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
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
