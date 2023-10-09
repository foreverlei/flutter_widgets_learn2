import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'container_controller.dart';

class ContainerView extends GetView<ContainerController> {
  const ContainerView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ContainerView'),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Container(
        color: Colors.amber,
        child: Container(
          width: 320,
          height: 240,
          // color: Colors.deepPurple[200],
          alignment: Alignment.bottomCenter,
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.all(30),
          decoration: BoxDecoration(
              color: Colors.blue,
              border: Border.all(width: 2),
              borderRadius: const BorderRadius.all(Radius.circular(10))),
          child: const Text("Label"),
        ),
      ),
    );
  }
}
