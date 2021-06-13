import 'package:flutter/material.dart';
import 'package:home_page/Models/Product.dart';
class itemCard extends StatefulWidget {
  final Product product;
  final Function press;
  const itemCard({
    Key? key,
    required this.product,
    required this.press,
  }) : super(key: key);

  @override
  _itemCardState createState() => _itemCardState(product,press);
}

class _itemCardState extends State<itemCard> {
  final product;
  final press;
  _itemCardState(this.product, this.press);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 100,
              child: Hero(
                tag: "${product.id}",
                child: Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage(product.image),
                    radius: 40,
                    backgroundColor: product.color,
                  ),
                ),
              ),
            ),
            Container(
              constraints: BoxConstraints(
                maxWidth: 100,
              ),
              child: Center(
                child: Text(
                  product.name,
                  style: TextStyle(
                    color: Colors.yellowAccent,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ]
      ),
    );
  }
}
