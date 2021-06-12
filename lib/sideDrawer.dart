import 'package:flutter/material.dart';

class sideDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
      color: Colors.black54,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            margin: EdgeInsets.only( top: 30),
            accountName: Row(
              children:  <Widget>[
                Text('Prathviraj',
                style: TextStyle(fontSize: 25),),
                Icon(Icons.verified_rounded),
                ]
              ),
            accountEmail: Text('Potato Seller'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  'assets/vegetable_images/potato.png',
                  fit: BoxFit.cover,
                  width: 90,
                  height: 90,

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
            title: Text('Profile',
            style: TextStyle(color: Colors.white,
            fontSize: 18),
            ),
            onTap: () => null,
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
            onTap: () => null,
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
            onTap: () => null,
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
            onTap: () => null,
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
            onTap: () => null,
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.exit_to_app,
              color: Colors.white70,
              size: 30,
            ),
            title: Text('Log Out',
                style: TextStyle(color: Colors.white,
                fontSize: 18),
            ),
            onTap: () => null,
          ),
        ],
      ),
      ),
    );

  }
}
