import 'package:coffee_app/bottom_nav.dart/detail.dart';
import 'package:coffee_app/widgets/items_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../constant/constants.dart';
import '../models/data_model.dart';
import '../widgets/app_bar.dart';
import '../widgets/categories.dart';
import '../widgets/offers.dart';
import '../widgets/search_widget.dart';
import '../components/text.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List items = ['Cappuccino', 'Amerciano', 'Espresso', 'Mocka'];

  int _currentItem = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextWidget(
                text: 'Search Your \nFavourite Coffee',
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SearchWidget(),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 10, bottom: 15),
              child: TextWidget(
                text: 'Categories',
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  items.length,
                  (index) => GestureDetector(
                    onTap: () {
                      setState(() {
                        _currentItem = index;
                      });
                    },
                    child: CategoriesWidget(
                      currentItem: _currentItem,
                      items: items,
                      index: index,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              child: Row(
                children: List.generate(
                    data.length,
                    (index) => ItemsList(
                          adds: data[index].adds,
                          image: data[index].image,
                          name: data[index].name,
                          price: '\$${data[index].price}',
                          onPressed: () {
                            Get.to(
                                () => Detail(
                                      detail: data[index],
                                    ),
                                transition: Transition.leftToRight);
                          },
                        )),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 10, top: 10, bottom: 15, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextWidget(
                    text: 'Special Offers',
                  ),
                  Text(
                    'View All',
                    style: TextStyle(
                      color: textColor,
                    ),
                  ),
                ],
              ),
            ),
            const OffersWidget(),
          ],
        ),
      ),
    );
  }
}
