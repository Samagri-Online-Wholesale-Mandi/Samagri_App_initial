import 'package:flutter/material.dart';

class sideDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
      color: Colors.black,
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Row(
              children:  <Widget>[
                Text('Prathviraj'),
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
            leading: Icon(Icons.account_box_rounded),
            title: Text('Profile'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.shopping_cart),
            title: Text('My Orders'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.meeting_room_rounded),
            title: Text('My Account'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.mode_comment_rounded),
            title: Text('FAQ'),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.mobile_screen_share_rounded),
            title: Text('Refer And Earn'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.call),
            title: Text('Support'),
            onTap: () => null,
          ),
          Divider(),
          ListTile(
            title: Text('Log Out'),
            leading: Icon(Icons.exit_to_app),
            onTap: () => null,
          ),
        ],

      ),
      ),
    );

  }
}
