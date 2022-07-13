import 'package:coffee_app/models/data_model.dart';
import 'package:coffee_app/widgets/cart_widget.dart';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
            children: List.generate(
          data.length,
          (index) => CartWidget(
            image: data[index].image,
            name: data[index].name,
            price: data[index].price,
          ),
        )),
      )),
    );
  }
}
