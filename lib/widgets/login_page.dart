import 'package:coffee_app/bottom_nav.dart/home_layout.dart';
import 'package:coffee_app/components/text.dart';
import 'package:coffee_app/constant/constants.dart';
import 'package:coffee_app/controller/bottom_nav.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../components/text_form_field.dart';

// ignore: must_be_immutable
class LoginPage extends StatelessWidget {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  var formKey = GlobalKey<FormState>();
  LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return GetBuilder<BottomNavBarController>(
      init: Get.put(BottomNavBarController()),
      builder: (controller) => Scaffold(
        body: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    TextWidget(text: 'Login'.toUpperCase()),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: width,
                      height: height * 0.40,
                      child: Image.asset(
                        'assets/lo.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Enter Your Email',
                      style: TextStyle(
                          color: textColor,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormFieldData(
                      prefix: Icons.email_outlined,
                      text: 'Email',
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Email must\'t be empty';
                        }
                        return null;
                      },
                      controller: emailcontroller,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Enter Your Password',
                      style: TextStyle(
                          color: textColor,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormFieldData(
                      isPassword: controller.isPassword,
                      prefix: Icons.lock_outline,
                      text: 'Password',
                      suffix: controller.suffix,
                      onpressed: () {
                        controller.changeSuffixIcon();
                      },
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Password must\'t be empty';
                        }
                        return null;
                      },
                      controller: passwordcontroller,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.transparent,
          elevation: 0.0,
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      elevation: 0.0,
                      shadowColor: Colors.transparent,
                      primary: primaryColor,
                      padding: const EdgeInsets.all(15),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      Get.offAll(() => const HomeLayout(),
                          transition: Transition.leftToRight);
                    }
                  },
                  child: const Text('LOGIN',
                      style: TextStyle(
                        fontSize: 18,
                      ))),
            ),
          ),
        ),
      ),
    );
  }
}
