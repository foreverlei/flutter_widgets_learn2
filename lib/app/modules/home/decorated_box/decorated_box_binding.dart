import 'package:get/get.dart';

import 'decorated_box_controller.dart';

class DecoratedBoxBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DecoratedBoxController>(
      () => DecoratedBoxController(),
    );
  }
}
