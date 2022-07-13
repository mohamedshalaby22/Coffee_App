import 'package:cached_network_image/cached_network_image.dart';
import 'package:coffee_app/components/text.dart';
import 'package:flutter/material.dart';

import '../constant/constants.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextWidget(text: 'My profile '),
                const Spacer(),
                Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: formFieldColor,
                      shape: BoxShape.circle,
                      border: Border.all(color: textColor, width: 1.2)),
                  child: const CircleAvatar(
                    backgroundColor: Color(0xff8f8b80),
                    radius: 60,
                    backgroundImage: CachedNetworkImageProvider(
                        'https://images.unsplash.com/photo-1614880353165-e56fac2ea9a8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80'),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextWidget(text: 'Sally Ali '),
                const SizedBox(
                  height: 20,
                ),
                TextWidget(text: 'SallyAli@gamil.com'),
                const Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
