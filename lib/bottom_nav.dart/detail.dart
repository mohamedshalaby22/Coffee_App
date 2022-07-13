// ignore_for_file: use_key_in_widget_constructors

import 'package:cached_network_image/cached_network_image.dart';
import 'package:coffee_app/models/data_model.dart';
import 'package:coffee_app/components/text.dart';
import 'package:flutter/material.dart';
import '../constant/constants.dart';
import '../widgets/size.dart';

class Detail extends StatefulWidget {
  final Data? detail;
  const Detail({this.detail});

  @override
  State<Detail> createState() => _CartPageState();
}

class _CartPageState extends State<Detail> {
  List size = ['S', 'M', 'L'];
  int _currentItem = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.all(10),
                    clipBehavior: Clip.hardEdge,
                    width: double.infinity,
                    height: 280,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: CachedNetworkImage(
                      imageUrl: widget.detail!.image,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Positioned(
                      left: 15,
                      top: 13,
                      child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.arrow_back_ios,
                            color: textColor,
                          ))),
                  Positioned(
                      right: 15,
                      top: 13,
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.favorite_border,
                            color: textColor,
                          ))),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 10, bottom: 20),
                child: TextWidget(
                  text: 'Choose your drink size',
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                        size.length,
                        (index) => GestureDetector(
                          onTap: () {
                            setState(() {
                              _currentItem = index;
                            });
                          },
                          child: SizeWidget(
                            currentItem: _currentItem,
                            items: size,
                            index: index,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 10, bottom: 20),
                child: TextWidget(
                  text: 'Description',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, bottom: 20),
                child: Text(
                  widget.detail!.des,
                  style: TextStyle(color: textColor, fontSize: 16, height: 1.3),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, bottom: 10, top: 20),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          'Price',
                          style: TextStyle(
                              color: primaryColor,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '\$${widget.detail!.price}',
                          style: TextStyle(
                              color: textColor,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: primaryColor,
                                padding: const EdgeInsets.all(15),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15))),
                            onPressed: () {},
                            child: const Text('Add to cart',
                                style: TextStyle(
                                  fontSize: 18,
                                ))),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
