// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import '../constant/constants.dart';

class TextWidget extends StatelessWidget {
  TextWidget({
    Key? key,
    required this.text,
  }) : super(key: key);
  String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: textColor, fontSize: 25, fontWeight: FontWeight.bold),
    );
  }
}
