import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_page/Models/Product.dart';

class AddToCart extends StatefulWidget {
  final Category category;
  const AddToCart({
    Key? key,
    required this.category
  }) : super(key: key);

  @override
  _AddToCartState createState() => _AddToCartState(category);
}

class _AddToCartState extends State<AddToCart> {
  final Category category;
  int count = 0;

  _AddToCartState(this.category);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: SizedBox(
        child: Row(
          children: [
            Expanded(
              child: Center(
                child: Column(
                  children :[
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 35,
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        category.name,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    )
                  ]
                ),
              ),
            ),
            SizedBox(width: 20,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    Text(
                      count.toString(),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(width: 5,),
                    Text(
                      category.scale,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ]
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      width: 30,
                      height: 30,
                      child: ElevatedButton(
                        onPressed: (){
                          setState(() {
                            if(count > 0)
                              count--;
                          });
                        },
                        child: Center(
                          child: Icon(
                            Icons.remove,
                            size: 15,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(horizontal: 5),
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    SizedBox(
                      width: 30,
                      height: 30,
                      child: ElevatedButton(
                        onPressed: (){
                          setState(() {
                            if(count < category.quantity)
                              count++;
                          });
                        },
                        child: Icon(
                          Icons.add,
                          size: 15,
                       ),
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(horizontal: 5),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
            SizedBox(width: 20,),
            Expanded(
              child: Center(
                child: Text(
                  category.price.toString(),
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
            SizedBox(width: 20,),
            Expanded(
              child: Text(
                (category.price * count).toString(),
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 25,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
