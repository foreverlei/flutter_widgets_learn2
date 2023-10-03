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
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        centerTitle: true,
      ),
      body: Center(
        child: DecoratedBox(
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.amber,
              borderRadius: BorderRadius.circular(2)),
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 2, horizontal: 4),
            child: const Text("DecoratedBoxView"),
          ),
        ),
      ),
    );
  }
}
