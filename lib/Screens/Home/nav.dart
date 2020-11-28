import 'package:Eve/Screens/Home/LHome.dart';
import 'package:Eve/Screens/Profile/settings.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'Homepage.dart';

class Nav extends StatefulWidget {
  Nav({Key key}) : super(key: key);
  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {
  PersistentTabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController(initialIndex: 0);
  }

  List<Widget> _buildScreens() {
    return [     
      HomePage(),
      LHomePage(),
      SettingScreen(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(Icons.home),
        title: ("Home"),
        activeColor: Colors.lightBlue[900],
        inactiveColor: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.event_available),
        title: ("Location"),
        activeColor: Colors.cyan[900],
        inactiveColor: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.settings),
        title: ("Settings"),
        activeColor: Colors.blue[900],
        inactiveColor: Colors.grey,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Material(
            child: PersistentTabView(
          controller: _controller,
          items: _navBarsItems(),
          screens: _buildScreens(),
          iconSize: 26.0,
          navBarStyle:
              NavBarStyle.style1, 
              onItemSelected: (index) {
            print(index);
          },
        )),
    );
  }
}
