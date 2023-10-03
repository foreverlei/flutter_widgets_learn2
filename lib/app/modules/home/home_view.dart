// import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_widgets_learn2/app/log/my_logger.dart';
import 'package:flutter_widgets_learn2/app/routes/app_pages.dart';

import 'package:get/get.dart';

import 'home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  getRouteWidgetsButton() {
    List<Widget> listWidget = [];
    for (var i = 0; i < AppPages.routes.length; ++i) {
      listWidget.add(ElevatedButton(
        onPressed: () {
          MyLogger.d(AppPages.routes[i].name);
          Get.offAll(AppPages.routes[i].name);
        },
        child: Text(AppPages.routes[i].name),
      ));

      for (var m = 0; m < AppPages.routes[i].children.length; ++m) {
        listWidget.add(ElevatedButton(
          onPressed: () {
            // print(AppPages.routes[i].children[m].name);
            MyLogger.d(
                AppPages.routes[i].name + AppPages.routes[i].children[m].name);
            Get.toNamed(
                AppPages.routes[i].name + AppPages.routes[i].children[m].name);
          },
          child: Text(
              AppPages.routes[i].name + AppPages.routes[i].children[m].name),
        ));
      }
    }
    return listWidget;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Get.toNamed(AppPages.INITIAL);
          },
        ),
      ),
      body: Center(
        // child: Text(
        //   'HomeView is working',
        //   style: TextStyle(fontSize: 20),
        // ),
        child: Column(
          children: getRouteWidgetsButton(),
        ),
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Business',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'School',
            ),
          ],
          currentIndex: controller.selectedIndex.value,
          selectedItemColor: Colors.amber[800],
          onTap: (index) {
            controller.selectedIndex.value = index;
            MyLogger.d(index);
          },
          enableFeedback: false,
        ),
      ),
    );
    // return GetRouterOutlet.builder(
    //   builder: (context, delegate, currentRoute) {
    //     return Scaffold(
    //       body: Center(
    //         // child: Text(
    //         //   'HomeView is working',
    //         //   style: TextStyle(fontSize: 20),
    //         // ),
    //         child: Column(
    //           children: getRouteWidgetsButton(),
    //         ),
    //       ),
    //       // bottomNavigationBar: IndexedRouteBuilder(),
    //     );
    //   },
    // );
  }
}
