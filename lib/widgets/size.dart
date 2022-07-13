// ignore_for_file: must_be_immutable

import 'package:coffee_app/constant/constants.dart';
import 'package:flutter/material.dart';

class SizeWidget extends StatelessWidget {
  const SizeWidget({
    Key? key,
    required this.items,
    required this.index,
    required this.currentItem,
  }) : super(key: key);

  final int currentItem;
  final List items;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      height: 55,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: currentItem == index ? primaryColor : formFieldColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          items[index],
          style: TextStyle(
            color: textColor,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}
