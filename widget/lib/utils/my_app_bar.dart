import 'package:flutter/material.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';

class MyAppBar{
  static getAppBar(String title) {
    return NewGradientAppBar(
      title: Text(title),
        gradient: const LinearGradient(colors: [Colors.black, Colors.indigo, Colors.deepPurple])
    );
  }

}
