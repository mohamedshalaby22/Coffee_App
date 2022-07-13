// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import '../constant/constants.dart';

class TextFormFieldData extends StatelessWidget {
  TextFormFieldData(
      {Key? key,
      required this.prefix,
      this.suffix,
      required this.text,
      required this.controller,
      this.onpressed,
      this.isPassword = false,
      required this.validator})
      : super(key: key);
  IconData prefix;
  IconData? suffix;
  String text;
  FormFieldValidator validator;
  TextEditingController controller;
  final VoidCallback? onpressed;
  final bool isPassword;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: formFieldColor, borderRadius: BorderRadius.circular(10)),
      child: TextFormField(
        obscureText: isPassword,
        validator: validator,
        style: const TextStyle(color: Colors.white),
        cursorColor: primaryColor,
        decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: Icon(
              prefix,
              size: 20,
              color: textColor,
            ),
            suffixIcon: IconButton(
              onPressed: onpressed,
              icon: Icon(
                suffix,
                size: 20,
                color: textColor,
              ),
            ),
            hintText: text,
            hintStyle: TextStyle(
              color: textColor,
            )),
      ),
    );
  }
}
