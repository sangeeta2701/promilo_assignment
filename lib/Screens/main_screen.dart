
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:promilo_assignment/Screens/shortcut/account_screen.dart';
import 'package:promilo_assignment/Screens/shortcut/explore_screen.dart';
import 'package:promilo_assignment/Screens/shortcut/home_screen.dart';
import 'package:promilo_assignment/Screens/shortcut/meetup_screen.dart';
import 'package:promilo_assignment/Screens/shortcut/prolet_screen.dart';
import 'package:promilo_assignment/utils/colors.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
   int _bottomNavIndex = 0;
   final List<Widget> _pages = [
    HomeScreen(),
    ProletScreen(),
    MeetupScreen(),
    ExploreScreen(),
    AccountScreen(),

   
  ];

  List<IconData> iconList = [
    Icons.home_outlined,
    Icons.view_comfy_alt_outlined,
    Icons.handshake_outlined,
    Icons.folder_outlined,
    Icons.person
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_bottomNavIndex],
      bottomNavigationBar: 
//       BottomNavigationBar(
//         currentIndex: _bottomNavIndex,
//         selectedIconTheme: IconThemeData(color: themeColor),
//         selectedItemColor: themeColor,
//         unselectedIconTheme: IconThemeData(color: gColor),
//         unselectedItemColor: gColor,
//         items: [
//         BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: "Home"),
//         BottomNavigationBarItem(icon: Icon(Icons.view_comfy_alt_outlined,
// ), label: "Prolet"),
//         BottomNavigationBarItem(icon: Icon(Icons.handshake_outlined), label: "Meetup"),
//         BottomNavigationBarItem(icon: Icon(Icons.folder_outlined), label: "Explore"),
//         BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: "Account")




//       ])
      AnimatedBottomNavigationBar(
          backgroundColor: wColor,
          icons: iconList,
          activeColor: themeColor,
          inactiveColor: gColor,
          activeIndex: _bottomNavIndex,
          gapLocation: GapLocation.none,
          notchSmoothness: NotchSmoothness.verySmoothEdge,
          leftCornerRadius: 0,
          rightCornerRadius: 0,
          onTap: (index) => setState(() => _bottomNavIndex = index),
          //other params
        )
    );
  }
}
