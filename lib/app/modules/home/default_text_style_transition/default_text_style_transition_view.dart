import 'package:flutter/material.dart';

// import 'package:get/get.dart';

// import 'default_text_style_transition_controller.dart';

class DefaultTextStyleTransitionView extends StatefulWidget {
  const DefaultTextStyleTransitionView({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _DefaultTextStyleTransitionView();
  }
}

class _DefaultTextStyleTransitionView
    extends State<DefaultTextStyleTransitionView>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<TextStyle> _animation;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(duration: const Duration(seconds: 2), vsync: this);
    _animation = TextStyleTween(
            begin: const TextStyle(color: Colors.blue, fontSize: 14),
            end: const TextStyle(color: Colors.red, fontSize: 24))
        .animate(_animationController);
//开始动画
    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DefaultTextStyleTransitionView'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        centerTitle: true,
      ),
      body: Center(
        child: DefaultTextStyleTransition(
          style: _animation,
          child: const Text('青州已过万重山! Hello World!'),
        ),
      ),
    );
  }
}
