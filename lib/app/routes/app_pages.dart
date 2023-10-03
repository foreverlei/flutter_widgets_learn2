import 'package:get/get.dart';

import '../modules/home/decorated_box/decorated_box_binding.dart';
import '../modules/home/decorated_box/decorated_box_view.dart';
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
      children: [
        GetPage(
          name: _Paths.DECORATED_BOX,
          page: () => const DecoratedBoxView(),
          binding: DecoratedBoxBinding(),
          transition: Transition.cupertino,
        ),
      ],
    ),
  ];
}
