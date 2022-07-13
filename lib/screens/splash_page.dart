import 'dart:async';
import 'package:coffee_app/screens/login_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      Get.offAll(() => LoginPage());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(),
        body: TweenAnimationBuilder(
            curve: Curves.easeInOut,
            tween: Tween<double>(begin: 20, end: size.width * 0.90),
            duration: const Duration(seconds: 3),
            builder: (BuildContext context, dynamic value, child) {
              return Center(
                child: Container(
                    width: value,
                    height: value,
                    margin: const EdgeInsets.only(right: 10),
                    child: Image.asset('assets/sp1.png')),
              );
            }));
  }
}
