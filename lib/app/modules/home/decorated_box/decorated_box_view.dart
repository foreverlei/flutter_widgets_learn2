import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'decorated_box_controller.dart';

class DecoratedBoxView extends GetView<DecoratedBoxController> {
  const DecoratedBoxView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DecoratedBoxView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'DecoratedBoxView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
