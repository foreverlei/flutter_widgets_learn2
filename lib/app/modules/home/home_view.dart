import 'dart:math';

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
    );
  }
}
