// ignore_for_file: non_constant_identifier_names

import 'package:cached_network_image/cached_network_image.dart';
import 'package:coffee_app/constant/constants.dart';
import 'package:flutter/material.dart';

AppBar AppBarWidget() {
  return AppBar(
    leading: const Padding(
      padding: EdgeInsets.only(left: 10, bottom: 10),
      child: CircleAvatar(
          backgroundColor: Color(0xff8f8b80),
          backgroundImage: CachedNetworkImageProvider(
            'https://images.unsplash.com/photo-1614880353165-e56fac2ea9a8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
          )),
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Stack(
          children: [
            const Icon(
              Icons.notifications_outlined,
              size: 30,
            ),
            Positioned(
              top: 2,
              right: 5,
              child: CircleAvatar(
                backgroundColor: primaryColor,
                radius: 5,
              ),
            ),
          ],
        ),
      ),
    ],
  );
}
