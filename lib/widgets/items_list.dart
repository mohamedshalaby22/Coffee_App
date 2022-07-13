// ignore_for_file: must_be_immutable

import 'package:coffee_app/constant/constants.dart';
import 'package:flutter/material.dart';

class ItemsList extends StatelessWidget {
  ItemsList(
      {Key? key,
      required this.image,
      required this.name,
      required this.adds,
      required this.onPressed,
      required this.price})
      : super(key: key);
  String name;
  String image;
  String adds;
  String price;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
          width: MediaQuery.of(context).size.width * 0.43,
          margin: const EdgeInsets.symmetric(horizontal: 10),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: formFieldColor,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    width: 230,
                    height: 120,
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.network(image, fit: BoxFit.cover),
                  ),
                  Positioned(
                    right: 0,
                    top: 5,
                    child: Icon(
                      Icons.favorite_border_outlined,
                      color: textColor,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                name,
                style: TextStyle(
                  color: textColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                adds,
                style: TextStyle(
                  color: textColor,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    price,
                    style: TextStyle(
                      color: textColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                  Container(
                      padding: const EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: primaryColor,
                      ),
                      child: Icon(
                        Icons.add,
                        color: textColor,
                      ))
                ],
              )
            ],
          )),
    );
  }
}
