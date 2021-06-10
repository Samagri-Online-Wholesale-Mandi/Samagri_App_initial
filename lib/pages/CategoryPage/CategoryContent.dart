import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:home_page/Models/Product.dart';
import 'package:home_page/pages/CategoryPage/add_to_cart.dart';

class CategoryContent extends StatelessWidget {
  final Product product;

  const CategoryContent({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
        color: product.color,
        child: Column(
          children: [
            SizedBox(
              height: size.height,
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: size.width,
                        height: 60,
                        child: Center(
                          child: Text(
                            product.name,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 50,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 100,vertical: 10),
                        child: Hero(
                          tag: "${product.id}",
                          child: Image(
                            image:AssetImage(product.image),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: size.height * 0.3),
                    padding: EdgeInsets.only(
                        top: size.height * 0.15,
                        left: 5,
                        right: 5
                    ),
                    height: 800,
                    decoration: BoxDecoration(
                        color: Colors.grey[800],
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(24),
                          topRight: Radius.circular(24),
                        )
                    ),
                    child: AddToCart(),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
