import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/assesmenthealth_controller.dart';

class AssesmenthealthView extends GetView<AssesmenthealthController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(onPressed: (){
          Get.back();
        }, icon: Icon(Icons.arrow_back_outlined)),
      ),
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('asserts/baground.png'), // Replace with your image path
                fit: BoxFit.fill,
              ),
            ),
          ),
          // Other widgets go here
          Center(
            child: Text(
              '',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
