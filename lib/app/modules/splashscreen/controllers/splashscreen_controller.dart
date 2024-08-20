import 'package:get/get.dart';

class SplashscreenController extends GetxController {
  // This observable variable will keep track of the count
  final count = 0.obs;

  @override
  void onInit() {
    // This method is called when the controller is initialized
    super.onInit();
    // You can add any initialization logic here if needed
  }

  @override
  void onReady() {
    // This method is called when the controller is fully ready
    super.onReady();
    // You can add any additional setup logic here if needed
  }

  @override
  void onClose() {
    // This method is called when the controller is about to be disposed of
    // Cleanup tasks can be added here
    super.onClose();
  }

  // This method increments the count value
  void increment() => count.value++;
}

