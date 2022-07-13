import 'package:coffee_app/screens/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'profile_page.dart';

class BottomNavBarController extends GetxController {
  List<Widget> bottomNavBarscreens = [
    const SplashScreen(),
    const ProfilePage(),
  ];
  List<BottomNavigationBarItem> bottomNavigationBarItem = [
    const BottomNavigationBarItem(
      icon: Padding(padding: EdgeInsets.only(top: 7), child: Icon(Icons.home)),
      label: 'Home',
    ),
    const BottomNavigationBarItem(
      icon: Padding(
          padding: EdgeInsets.only(top: 7),
          child: Icon(
            Icons.person,
          )),
      label: 'Profile',
    )
  ];
  int currentIndex = 0;
  void changecurrentIndex(int index) {
    currentIndex = index;
    update();
  }
}
