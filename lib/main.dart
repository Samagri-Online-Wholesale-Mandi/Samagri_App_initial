import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
      body: Container(
        color: Colors.grey[800],
        child: Padding(
          padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Center(
                child: searchBar(),
              ),
              SizedBox(height: 20,),
              Card(
                margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      width: 130,
                      color: Colors.green,
                      child: Column(
                        children: [
                          Padding(
                            padding:EdgeInsets.all(10,),
                            child: Text(
                              "Vegetables",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                          Row(
                            //vegetable images scrollbar
                          ),
                        ]
                      ),
                    ),
                  ],
                ),
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


