import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:whats_on_app/screens/home.dart';
import 'package:whats_on_app/screens/location_screen.dart';
import 'package:whats_on_app/screens/notification_screen.dart';
import 'package:whats_on_app/screens/profile.dart';

List<Widget> _buildScreens() {
  return [
    const Home(),
    const LocationScreen(),
    const Profile(),
    const NotificationScreen(),
  ];
}

List _navbarItemsList = [
  {
    "icon_default": IconlyLight.home,
    "icon_active": IconlyBold.home,
  },
  {
    "icon_default": IconlyLight.location,
    "icon_active": IconlyBold.location,
  },
  {
    "icon_default": IconlyLight.profile,
    "icon_active": IconlyBold.profile,
  },
  {
    "icon_default": IconlyLight.notification,
    "icon_active": IconlyBold.notification,
  },
];

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<BottomNavigationBarItem> _navBarsItems() {
    return _navbarItemsList
        .map(
          (e) => _buildNavbarItems(
            e['icon_default'],
            e['icon_active'],
          ),
        )
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildScreens().elementAt(_selectedIndex),
      bottomNavigationBar: SizedBox(
        height: kBottomNavigationBarHeight + 20,
        child: BottomNavigationBar(
          elevation: 5.0,
          items: _navBarsItems(),
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
        ),
      ),
    );
  }
}

BottomNavigationBarItem _buildNavbarItems(
  IconData? iconDefault,
  IconData? iconActive,
) {
  return BottomNavigationBarItem(
    icon: Icon(
      iconDefault,
      size: 25,
      color: Colors.grey,
    ),
    activeIcon: Icon(
      iconActive,
      size: 25,
    ),
    label: '',
  );
}
