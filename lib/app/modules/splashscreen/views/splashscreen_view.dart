import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'dart:async';

import '../controllers/splashscreen_controller.dart';

class SplashscreenView extends GetView<SplashscreenController> {
  @override
  Widget build(BuildContext context) {
    // Call the controller function to get all info
    // controller.getallinfo();

    // Schedule navigation to the next screen after 5 seconds
    Timer(Duration(seconds: 5), () {
      Get.offNamed('/home'); // Replace '/nextScreen' with your route name
    });

    return Scaffold(
      body: Center(
        child: Lottie.asset(
          'asserts/Animation - 1724045522396.json',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
