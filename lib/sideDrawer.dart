import 'package:flutter/material.dart';
import 'package:home_page/pages/SideDrawerPages/FaqPage/FaqBody.dart';
import 'package:home_page/pages/SideDrawerPages/Profile_page/ViewProfile.dart';

String profileImg = 'assets/vegetable_images/potato.png';

class sideDrawer extends StatelessWidget {
  bool isVerified = true;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.grey[800],
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              margin: EdgeInsets.only( top: 30),
              accountName: Row(
                  children:  <Widget>[
                    Text('Prathviraj',
                      style: TextStyle(fontSize: 25),),
                    SizedBox(width: 10,),
                    Icon(
                      Icons.verified_rounded,
                      color: isVerified ? Colors.blueAccent : Colors.black,
                    ),
                  ]
              ),
              accountEmail: Text('Potato Seller'),
              currentAccountPicture: Hero(
                tag: "$profileImg",
                child: CircleAvatar(
                  child: ClipOval(
                    child: Image.asset(
                      'assets/vegetable_images/potato.png',
                      fit: BoxFit.cover,
                      width: 90,
                      height: 90,

                    ),
                  ),
                ),
              ),
              decoration: BoxDecoration(
                  color: Colors.black
              ),
            ),

            ListTile(
              leading: Icon(Icons.account_box_rounded,
                color: Colors.white70,
                size: 30,
              ),
              title: Text(
                'Profile',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => profile()
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart,
                color: Colors.white70,
                size: 30,
              ),
              title: Text('My Orders',
                style: TextStyle(color: Colors.white,
                    fontSize: 18),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.meeting_room_rounded,
                color: Colors.white70,
                size: 30,
              ),
              title: Text('My Account',
                style: TextStyle(color: Colors.white,
                    fontSize: 18),
              ),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.mode_comment_rounded,
                color: Colors.white70,
                size: 30,
              ),
              title: Text('FAQ',
                style: TextStyle(color: Colors.white,
                    fontSize: 18),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => FaqBody()
                  ),
                );
              }
            ),
            ListTile(
              leading: Icon(Icons.mobile_screen_share_rounded,
                color: Colors.white70,
                size: 30,
              ),
              title: Text('Refer And Earn',
                style: TextStyle(color: Colors.white,
                    fontSize: 18),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.call,
                color: Colors.white70,
                size: 30,
              ),
              title: Text('Support',
                style: TextStyle(color: Colors.white,
                    fontSize: 18),
              ),
              onTap: () {},
            ),
            Divider(),
            GestureDetector(
              onTap: (){},
              child: ListTile(
                leading: Icon(Icons.exit_to_app,
                  color: Colors.white70,
                  size: 30,
                ),
                title: Text('Log Out',
                  style: TextStyle(color: Colors.white,
                      fontSize: 18),
                ),
                onTap: () {},
              ),
            ),
          ],
        ),
      ),
    );

  }
}