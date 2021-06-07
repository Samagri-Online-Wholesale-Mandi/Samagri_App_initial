import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_page/Models/Product.dart';

import 'fillCommodities.dart';

void main() {
  runApp(MaterialApp(
    home: Home_page(),
  ));
}

class Home_page extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[850],
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 20,
              ),
            ),
            SizedBox(width: 20,),
            Expanded(
              flex: 5,
              child:Padding(
                padding: EdgeInsets.all(5),
                child: Text(
                  "Select commodity",
                ),
              ),
            ),
            Expanded(
              child: IconButton(onPressed: (){},
                icon: Icon(Icons.shopping_cart),
                iconSize: 30,
              ),
            ),
          ]
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.grey[800],
          child: Column(    //column of body search bar and scroll bars for different commodities
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Center(
                  child: searchBar(),
                ),
              ),
              SizedBox(height: 30,),
              Column(
                children: [
                  Card(
                    color: Colors.grey[800],
                    child: populateContent(),
                  ),

                  SizedBox(height: 20,),
                  Card(
                    color: Colors.grey[800],
                    child: populateContent(),
                  ),
                  SizedBox(height: 20,),
                  Card(
                    color: Colors.grey[800],
                    child: populateContent(),
                  ),
                  SizedBox(height: 20,),
                  Card(
                    color: Colors.grey[800],
                    child: populateContent(),
                  ),
                  SizedBox(height: 20,),
                  Card(
                    color: Colors.grey[800],
                    child: populateContent(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class searchBar extends StatefulWidget {

  @override
  _searchBarState createState() => _searchBarState();
}

class _searchBarState extends State<searchBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 300,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.search),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          hintText: 'Search',
        ),
      ),
    );
  }
}





