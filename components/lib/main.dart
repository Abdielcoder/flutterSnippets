import 'package:components/screens/screens.dart';
import 'package:flutter/material.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Welcome to Flutter',
      //home: ListView2Screen(),
      initialRoute: 'HomePage',
      routes: {
        'listPage1': (BuildContext context) => const ListView1Screen(),
        'listPage2': (BuildContext context) => const ListView2Screen(),
        'HomePage' : (BuildContext context) => const HomeScreen(),
      },
    );
  }
}