import 'package:get/get.dart';

import 'default_text_style_transition_controller.dart';

class DefaultTextStyleTransitionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DefaultTextStyleTransitionController>(
      () => DefaultTextStyleTransitionController(),
    );
  }
}
