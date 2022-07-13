import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(),
        body: Center(
          child: Container(
              width: 250,
              height: 250,
              clipBehavior: Clip.hardEdge,
              decoration: const BoxDecoration(shape: BoxShape.circle),
              margin: const EdgeInsets.only(right: 10),
              child: Image.asset('assets/w.jpeg')),
        ));
  }
}
