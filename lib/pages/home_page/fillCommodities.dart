import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_page/Models/Product.dart';

class populateContent extends StatefulWidget {

  @override
  _populateContentState createState() => _populateContentState();
}

class _populateContentState extends State<populateContent> {
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            width: 130,
            color: Colors.green,
            child: Padding(
              padding:EdgeInsets.all(10,),
              child: Text(
                "Vegetables",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: SizedBox(
              width: double.infinity,
              height: 180.0,
              child: Container(
                color: Colors.grey[800],
                child: ListView.builder(
                  physics: ClampingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) =>
                    SizedBox(
                      width: 120,
                      child: Card(
                        color: Colors.grey[700],
                        child: Column(
                          children: [
                            Expanded(
                              flex: 3,
                              child: Center(
                                child: CircleAvatar(
                                  radius: 50,
                                  backgroundImage: AssetImage("assets/vegetable_images/onion.jpg",),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child:
                                Text(
                                  "Onion",
                                  style: TextStyle(
                                    color: Colors.yellowAccent,
                                    fontSize: 20,
                                  ),
                                ),
                            ),
                          ],
                        )
                      ),
                    ),
                ),
              ),
            ),
          ),
        ]
    );
  }
}