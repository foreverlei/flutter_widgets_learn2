import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'custome_scroll_view_controller.dart';

class CustomeScrollViewView extends GetView<CustomeScrollViewController> {
  const CustomeScrollViewView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          pinned: true,
          expandedHeight: 200.0,
          flexibleSpace: FlexibleSpaceBar(
            title: const Text('复仇者联盟'),
            background: Image.network(
              'https://img2.baidu.com/it/u=635812276,1213380653&fm=253&fmt=auto&app=120&f=JPEG?w=1422&h=800',
              fit: BoxFit.fill,
            ),
            stretchModes: const [
              StretchMode.zoomBackground,
              StretchMode.blurBackground
            ],
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate((content, index) {
            return Container(
              height: 65,
              color: Colors.primaries[index % Colors.primaries.length],
            );
          }, childCount: 50),
        )
      ],
    );
  }
}
