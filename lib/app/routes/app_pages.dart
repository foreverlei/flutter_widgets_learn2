import 'package:get/get.dart';

import '../modules/home/container/container_binding.dart';
import '../modules/home/container/container_view.dart';
import '../modules/home/custome_scroll_view/custome_scroll_view_binding.dart';
import '../modules/home/custome_scroll_view/custome_scroll_view_view.dart';
import '../modules/home/decorated_box/decorated_box_binding.dart';
import '../modules/home/decorated_box/decorated_box_view.dart';
import '../modules/home/default_text_style_transition/default_text_style_transition_binding.dart';
import '../modules/home/default_text_style_transition/default_text_style_transition_view.dart';
import '../modules/home/home_binding.dart';
import '../modules/home/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
      transition: Transition.cupertino,
      preventDuplicates: true,
      children: [
        GetPage(
          name: _Paths.DECORATED_BOX,
          page: () => const DecoratedBoxView(),
          binding: DecoratedBoxBinding(),
          transition: Transition.cupertino,
          participatesInRootNavigator: false,
        ),
        GetPage(
          name: _Paths.DEFAULT_TEXT_STYLE_TRANSITION,
          page: () => const DefaultTextStyleTransitionView(),
          binding: DefaultTextStyleTransitionBinding(),
          transition: Transition.cupertino,
        ),
        GetPage(
          name: _Paths.CUSTOME_SCROLL_VIEW,
          page: () => const CustomeScrollViewView(),
          binding: CustomeScrollViewBinding(),
          transition: Transition.cupertino,
        ),
        GetPage(
          name: _Paths.CONTAINER,
          page: () => const ContainerView(),
          binding: ContainerBinding(),
          transition: Transition.cupertino,
        ),
      ],
    ),
  ];
}
