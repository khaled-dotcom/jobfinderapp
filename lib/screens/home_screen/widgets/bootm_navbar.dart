import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _curIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      selectedItemColor: Colors.deepOrange,
      unselectedItemColor: Colors.grey.withOpacity(.60),
      selectedFontSize: 14,
      unselectedFontSize: 14,
      currentIndex: _curIndex,
      onTap: (value) {
        setState(() => _curIndex = value);
        // Respond to item press.
      },
      //bottom navigationbar items
      items: [
        BottomNavigationBarItem(
          title: Text('Home'),
          icon: Icon(Icons.home_rounded),
        ),
        BottomNavigationBarItem(
          title: Text('Save'),
          icon: Icon(Icons.bookmark_outline_sharp),
        ),
        BottomNavigationBarItem(
          title: Text('Chat'),
          icon: Icon(Icons.chat),
        ),
        BottomNavigationBarItem(
          title: Text('Profile'),
          icon: Icon(Icons.person_outlined),
        ),
      ],
    );
  }
}
