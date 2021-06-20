import 'package:flutter/material.dart';
import 'package:home_page/Models/Product.dart';
List<Product> starred = [];
IconData beforeStar = Icons.star_border;
IconData afterStar = Icons.star;


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
  IconData currentIcon = beforeStar;
  _itemCardState(this.product, this.press);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 130,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Hero(
                    tag: "${product.id}",
                    child: CircleAvatar(
                      backgroundImage: AssetImage(product.image),
                      radius: 40,
                      backgroundColor: product.color,
                    ),
                  ),
                  IconButton(
                    onPressed: (){
                      setState(() {
                        if(currentIcon == beforeStar) {
                          currentIcon = afterStar;
                          if(!starred.contains(product)){
                            starred.add(product);
                          }
                        }
                        else {
                          currentIcon = beforeStar;
                          starred.remove(product);
                        }
                      });
                      print(starred);
                    },
                    icon: Icon(
                      currentIcon,
                      color: Colors.white,
                      size: 30,
                    )
                  ),
                ],
              )
            ),
            Container(
              constraints: BoxConstraints(
                maxWidth: 130,
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
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
