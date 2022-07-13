import 'package:coffee_app/bottom_nav.dart/cart_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../bottom_nav.dart/home_page.dart';
import '../bottom_nav.dart/profile_page.dart';

class BottomNavBarController extends GetxController {
  List<Widget> bottomNavBarscreens = [
    const HomePage(),
    const CartPage(),
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
            Icons.shopping_cart,
          )),
      label: 'Cart',
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

  //suffix icon
  var isPassword = true;
  IconData suffix = Icons.visibility_off_outlined;
  void changeSuffixIcon() {
    isPassword = !isPassword;
    suffix =
        isPassword ? Icons.visibility_off_outlined : Icons.visibility_outlined;
    update();
  }
}
