import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // Define the default brightness and colors.
        brightness: Brightness.dark,
        primaryColor: Colors.green,
        accentColor: Colors.cyan[600],

        // Define the default font family.
        fontFamily: 'Georgia',

        // Define the default TextTheme. Use this to specify the default
        // text styling for headlines, titles, bodies of text, and more.
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
          bodyText2: TextStyle(fontSize: 60.0),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: Text(
              "My account",
              style: Theme.of(context).textTheme.headline5,
            )),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: InkWell(
                onTap: () => null,
                child: Container(
                  height: 52.0,
                  width: 350.0,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0.0, 20.0),
                            blurRadius: 30.0,
                            color: Colors.black12)
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(22.0)),
                  child: Row(
                    children: <Widget>[
                      Container(
                        height: 60.0,
                        width: 300.0,
                        padding: EdgeInsets.symmetric(
                            vertical: 15.0, horizontal: 12.0),
                        child: Text(
                          "   View My Profile",
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        decoration: BoxDecoration(
                            color: Colors.greenAccent,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(95.0),
                                topLeft: Radius.circular(95.0),
                                bottomRight: Radius.circular(200.0))),
                      ),
                      Icon(
                        Icons.create_outlined,
                        color: Colors.black,
                        size: 30.0,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Center(
              child: InkWell(
                onTap: () => null,
                child: Container(
                  height: 52.0,
                  width: 350.0,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0.0, 20.0),
                            blurRadius: 30.0,
                            color: Colors.black12)
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(22.0)),
                  child: Row(
                    children: <Widget>[
                      Container(
                        height: 60.0,
                        width: 300.0,
                        padding: EdgeInsets.symmetric(
                            vertical: 15.0, horizontal: 12.0),
                        child: Text(
                          "   Orders This Month",
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        decoration: BoxDecoration(
                            color: Colors.greenAccent,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(95.0),
                                topLeft: Radius.circular(95.0),
                                bottomRight: Radius.circular(200.0))),
                      ),
                      Text(
                        "  0",
                        style: TextStyle(fontSize: 25.0, color: Colors.black),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: InkWell(
                onTap: () => null,
                child: Container(
                  height: 52.0,
                  width: 350.0,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0.0, 20.0),
                            blurRadius: 30.0,
                            color: Colors.black12)
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(22.0)),
                  child: Row(
                    children: <Widget>[
                      Container(
                        height: 60.0,
                        width: 300.0,
                        padding: EdgeInsets.symmetric(
                            vertical: 15.0, horizontal: 12.0),
                        child: Text(
                          "   Orders This year",
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        decoration: BoxDecoration(
                            color: Colors.greenAccent,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(95.0),
                                topLeft: Radius.circular(95.0),
                                bottomRight: Radius.circular(200.0))),
                      ),
                      Text(
                        "  0",
                        style: TextStyle(fontSize: 25.0, color: Colors.black),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Center(
              child: InkWell(
                onTap: () => null,
                child: Container(
                  height: 52.0,
                  width: 350.0,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0.0, 20.0),
                            blurRadius: 30.0,
                            color: Colors.black12)
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(22.0)),
                  child: Row(
                    children: <Widget>[
                      Container(
                        height: 60.0,
                        width: 300.0,
                        padding: EdgeInsets.symmetric(
                            vertical: 15.0, horizontal: 12.0),
                        child: Text(
                          "   Amount SAVED This Month",
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        decoration: BoxDecoration(
                            color: Colors.greenAccent,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(95.0),
                                topLeft: Radius.circular(95.0),
                                bottomRight: Radius.circular(200.0))),
                      ),
                      Text(
                        "  0",
                        style: TextStyle(fontSize: 25.0, color: Colors.black),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: InkWell(
                onTap: () => null,
                child: Container(
                  height: 52.0,
                  width: 350.0,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0.0, 20.0),
                            blurRadius: 30.0,
                            color: Colors.black12)
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(22.0)),
                  child: Row(
                    children: <Widget>[
                      Container(
                        height: 60.0,
                        width: 300.0,
                        padding: EdgeInsets.symmetric(
                            vertical: 15.0, horizontal: 12.0),
                        child: Text(
                          "   Amount SAVED This Year",
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        decoration: BoxDecoration(
                            color: Colors.greenAccent,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(95.0),
                                topLeft: Radius.circular(95.0),
                                bottomRight: Radius.circular(200.0))),
                      ),
                      Text(
                        "  0",
                        style: TextStyle(fontSize: 25.0, color: Colors.black),
                      )
                    ],
                  ),
                ),
              ),
            ),
            /* Center(
              child: InkWell(
                onTap: () => null,
                child: Container(
                  height: 52.0,
                  width: 195.0,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0.0, 20.0),
                            blurRadius: 30.0,
                            color: Colors.black12)
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(22.0)),
                  child: Row(
                    children: <Widget>[
                      Container(
                        height: 60.0,
                        width: 150.0,
                        padding: EdgeInsets.symmetric(
                            vertical: 15.0, horizontal: 12.0),
                        child: Text(
                          "     Logout",
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        decoration: BoxDecoration(
                            color: Colors.greenAccent,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(95.0),
                                topLeft: Radius.circular(95.0),
                                bottomRight: Radius.circular(200.0))),
                      ),
                      Icon(
                        Icons.logout,
                        color: Colors.redAccent,
                        size: 30.0,
                      )
                    ],
                  ),
                ),
              ),
            ),*/
          ],
        ),
      ),
    );
  }
}
