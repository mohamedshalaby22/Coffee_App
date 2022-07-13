// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../constant/constants.dart';

class CartWidget extends StatelessWidget {
  CartWidget({
    Key? key,
    required this.image,
    required this.name,
    required this.price,
  }) : super(key: key);
  String image;
  String name;
  String price;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: formFieldColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            clipBehavior: Clip.hardEdge,
            width: 180,
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Image.network(
              image,
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            children: [
              Text(
                name,
                style: TextStyle(
                    color: textColor,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                price,
                style: TextStyle(
                    color: textColor,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
