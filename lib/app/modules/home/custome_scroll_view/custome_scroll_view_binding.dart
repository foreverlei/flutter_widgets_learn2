import 'package:get/get.dart';

import 'custome_scroll_view_controller.dart';

class CustomeScrollViewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CustomeScrollViewController>(
      () => CustomeScrollViewController(),
    );
  }
}
