import 'package:flutter/material.dart';
import 'package:flutter_widgets_learn2/app/log/my_logger.dart';

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
      endDrawer: Drawer(
          child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue.withOpacity(.4)),
            child: Row(
              children: <Widget>[
                const CircleAvatar(
                  child: Text('A'),
                ),
                const SizedBox(
                  width: 10,
                ),
                ActionChip(
                  label: const Text('中国'),
                  onPressed: () {},
                )
              ],
            ),
          ),
          const ListTile(
            leading: Icon(Icons.circle_notifications),
            title: Text("ListTile"),
          ),
          const ListTile(
            leading: Icon(Icons.circle_notifications),
            title: Text("ListTile"),
          ),
          const ListTile(
            leading: Icon(Icons.circle_notifications),
            title: Text("ListTile"),
          ),
        ],
      )),
      body: Center(
        child: Column(
          children: [
            DecoratedBox(
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(2)),
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 2, horizontal: 4),
                child: const Text("DecoratedBoxView"),
              ),
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.red,
              child: const Directionality(
                textDirection: TextDirection.rtl,
                child: Text('你好'),
              ),
            ),
            Dismissible(
              key: const ValueKey('key'),
              child: Container(
                height: 80,
                color: Colors.red,
              ),
            ),
            const Divider(
              height: 10,
              thickness: 2,
              color: Colors.red,
              indent: 10,
              endIndent: 20,
            ),
            const VerticalDivider(
              width: 20,
              thickness: 20,
              color: Colors.blue,
              indent: 10,
              endIndent: 30,
            ),
            Draggable(
              feedback: Container(
                height: 100,
                width: 100,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10)),
                child: const Text(
                  '你好',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
              child: Container(
                height: 100,
                width: 100,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(10)),
                child: const Text(
                  '你好',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
            DropdownButtonFormField(
              value: "语文",
              items: const [
                DropdownMenuItem(
                  value: '语文',
                  child: Text('语文'),
                ),
                DropdownMenuItem(value: '数学', child: Text('数学')),
                DropdownMenuItem(value: '英语', child: Text('英语')),
              ],
              onChanged: (String? value) {
                MyLogger.d(value);
              },
            ),
            DropdownButton(
              value: "语文",
              // underline: const Divider(
              //   color: Colors.red,
              //   height: 5,
              //   thickness: 5,
              // ),
              items: const [
                DropdownMenuItem(
                  value: '语文',
                  child: Text('语文'),
                ),
                DropdownMenuItem(value: '数学', child: Text('数学')),
                DropdownMenuItem(value: '英语', child: Text('英语')),
              ],
              onChanged: (value) {
                MyLogger.d(value);
              },
            ),
            ExpandIcon(
              onPressed: (value) {
                MyLogger.d(value);
              },
              disabledColor: Colors.green,
              expandedColor: Colors.blue,
              color: Colors.red,
              isExpanded: false,
            )
          ],
        ),
      ),
    );
  }
}
