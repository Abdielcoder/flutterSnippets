import 'package:flutter/cupertino.dart';
import '../screens/screens.dart';

class AppRoutes{
  static const initialRoute = 'HomePage';
  static Map<String, Widget Function(BuildContext)> routes = {
    'listPage1': (BuildContext context) => const ListView1Screen(),
    'listPage2': (BuildContext context) => const ListView2Screen(),
    'HomePage' : (BuildContext context) => const HomeScreen(),
  };
}