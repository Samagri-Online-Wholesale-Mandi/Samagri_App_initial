import 'package:flutter/material.dart';
import 'package:home_page/Models/Product.dart';
class itemCard extends StatefulWidget {
  final Product product;
  const itemCard({
    Key? key,
    required this.product
  }) : super(key: key);

  @override
  _itemCardState createState() => _itemCardState(product);
}

class _itemCardState extends State<itemCard> {
  final product;
  _itemCardState(this.product);

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                print("hello world");
              });
            },
            child: CircleAvatar(
              backgroundImage: AssetImage(product.image),
              radius: 50,
              backgroundColor: Colors.transparent,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 10),
              child: Text(
                product.name,
                style: TextStyle(
                  color: Colors.yellowAccent,
                  fontSize: 18,
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "₹${product.price}",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 22,
                ),
              ),
            ),
          )
        ]
    );
  }
}
