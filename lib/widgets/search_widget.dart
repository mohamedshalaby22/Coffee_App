// ignore_for_file: must_be_immutable

import 'package:coffee_app/components/text_form_field.dart';
import 'package:flutter/material.dart';
import '../constant/constants.dart';

class SearchWidget extends StatelessWidget {
  TextEditingController controller = TextEditingController();

  SearchWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: TextFormFieldData(
            prefix: Icons.search,
            text: 'Find Your Coffee',
            validator: (value) {
              return null;
            },
            controller: controller,
          ),
        )),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: primaryColor, borderRadius: BorderRadius.circular(10)),
          child: Icon(
            Icons.tune_sharp,
            color: textColor,
          ),
        )
      ],
    );
  }
}
