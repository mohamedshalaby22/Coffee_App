import 'package:coffee_app/controller/bottom_nav.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomNavBarController>(
      init: Get.put(BottomNavBarController()),
      builder: (controller) => Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: controller.currentIndex,
            onTap: (index) {
              controller.changecurrentIndex(index);
            },
            backgroundColor: const Color(0xff8f8b80),
            type: BottomNavigationBarType.fixed,
            iconSize: 27,
            selectedItemColor: const Color(0xffd76c14),
            unselectedItemColor: Colors.white,
            items: controller.bottomNavigationBarItem),
        body: controller.bottomNavBarscreens[controller.currentIndex],
      ),
    );
  }
}
