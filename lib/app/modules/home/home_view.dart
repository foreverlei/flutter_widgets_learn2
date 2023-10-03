import 'package:flutter/material.dart';
import 'package:flutter_widgets_learn2/app/routes/app_pages.dart';

import 'package:get/get.dart';

import 'home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  getRouteWidgetsButton() {
    List<Widget> listWidget = [];
    for (var i = 0; i < AppPages.routes.length; ++i) {
      listWidget.add(ElevatedButton(
        onPressed: () {},
        child: Text(AppPages.routes[i].name),
      ));
    }
    return listWidget;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
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
