import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:home_page/Models/Product.dart';
import 'package:home_page/pages/CategoryPage/CategoryBody.dart';
import 'package:page_transition/page_transition.dart';
List<Product> starred = [];
IconData beforeStar = Icons.star_border;
IconData afterStar = Icons.star;


class itemCard extends StatefulWidget {
  final Product product;
  const itemCard({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  _itemCardState createState() => _itemCardState(product);
}

class _itemCardState extends State<itemCard> {
  final product;
  IconData currentIcon = beforeStar;
  _itemCardState(this.product);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: GestureDetector(
        child: InkWell(
          splashColor: Colors.white,
          onTap: (){
            HapticFeedback.vibrate();
            Navigator.push(
              context,
              PageTransition(
                  type: PageTransitionType.bottomToTop,
                  child: CategoryBody(product: product)
              ),
            );
          },
          child:
            Container(
              constraints: BoxConstraints(
                minWidth: 140,
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey[700]!,
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SizedBox(width: 100),
                      FittedBox(
                        fit: BoxFit.contain,
                        child: IconButton(
                          padding: EdgeInsets.zero,
                          constraints: BoxConstraints(),
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
                            color: Colors.grey[300],
                            size: 30,
                          )
                        ),
                      ),
                    ],
                  ),
                  Hero(
                    tag: "${product.id}",
                    child: CircleAvatar(
                      backgroundImage: AssetImage(product.image),
                      radius: 40,
                      backgroundColor: product.color,
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      product.name,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
        ),
      ),
    );
  }
}
