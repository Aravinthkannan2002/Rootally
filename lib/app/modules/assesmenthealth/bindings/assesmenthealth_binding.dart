import 'package:get/get.dart';

import '../controllers/assesmenthealth_controller.dart';

class AssesmenthealthBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AssesmenthealthController>(
      () => AssesmenthealthController(),
    );
  }
}
