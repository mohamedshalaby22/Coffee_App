import 'package:flutter/material.dart';

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
                      color: const Color(0xff8f8b80),
                      shape: BoxShape.circle,
                      border: Border.all(
                          color: const Color(0xfff2f1e7), width: 1.2)),
                  child: const CircleAvatar(
                    backgroundColor: Color(0xff8f8b80),
                    radius: 60,
                    backgroundImage: NetworkImage(
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
// ignore_for_file: must_be_immutable

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
      style: const TextStyle(
          color: Color(0xfff2f1e7), fontSize: 25, fontWeight: FontWeight.bold),
    );
  }
}
