import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {

  int _selectedIndex = 1;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'Index 3: Settings',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            size: 30,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.shopping_bag,
            size: 30,
          ),
          label: 'Shop',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.shopping_cart,
            size: 30,
          ),
          label: 'Cart',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.call,
            size: 30,
          ),
          label: 'Support',
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.yellowAccent,
      onTap: _onItemTapped,
    );
  }
}
