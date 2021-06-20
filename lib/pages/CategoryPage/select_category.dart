import 'package:flutter/material.dart';
import 'package:home_page/Models/Product.dart';
import 'add_to_cart.dart';

class SelectCategory extends StatefulWidget {
  final Product product;
  const SelectCategory({
    Key? key,
    required this.product
  }) : super(key: key);

  @override
  _SelectCategoryState createState() => _SelectCategoryState();
}

class _SelectCategoryState extends State<SelectCategory> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 60,
              child: Center(
                child: Text(
                  "Select Category",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
            Text(
            "₹"+total.toString(),
              style: TextStyle(
                color: Colors.green,
                fontSize: 35
              ),
            )
          ]
        ),
        SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: Center(
                  child: Text(
                    "Category",
                    style: TextStyle(
                      color: Colors.yellow,
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    "Quantity",
                    style: TextStyle(
                      color: Colors.yellow,
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    "Price(/Kg)",
                    style: TextStyle(
                      color: Colors.yellow,
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Center(
                  child: Text(
                    "Total",
                    style: TextStyle(
                      color: Colors.yellow,
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: SizedBox(
            height: size.height*0.5,
            child: ListView.builder(
              physics: ClampingScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemCount: widget.product.categories.length,
              itemBuilder: (context,index1) =>
                AddToCart(category:widget.product.categories[index1])
            ),
          ),
        ),
      ],
    );
  }
}

