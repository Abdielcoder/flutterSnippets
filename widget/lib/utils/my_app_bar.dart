import 'package:flutter/material.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NewGradientAppBar(
        title: Text('Flutter'),
        gradient:
            LinearGradient(colors: [Colors.blue, Colors.purple, Colors.red]));
  }
}
