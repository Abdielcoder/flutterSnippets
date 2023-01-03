import 'package:components/models/models.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../screens/screens.dart';

class AppRoutes{
  static const initialRoute = 'HomePage';
  static final menuOptions = <MenuOption>[//Model
    //Add riquired items and it types
    MenuOption(route:'HomePage' ,icon: Icons.cottage ,name: 'Home Screen' ,screen:HomeScreen()),
    MenuOption(route:'listPage1' ,icon: Icons.list ,name: 'Books' ,screen:ListView1Screen()),
    MenuOption(route:'listPage2' ,icon: Icons.toc ,name: 'Movies' ,screen:ListView2Screen()),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes(){//Strint and Widget
    //Map for Routes
    Map<String, Widget Function(BuildContext)> appRoutes = {};
      for(final option in menuOptions){
        appRoutes.addAll({option.route: (BuildContext context) => option.screen});
      }

    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings){
    return MaterialPageRoute(builder: (context) => const ListView1Screen());
  }
  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'listPage1': (BuildContext context) => const ListView1Screen(),
  //   'listPage2': (BuildContext context) => const ListView2Screen(),
  //   'HomePage' : (BuildContext context) => const HomeScreen(),
  // };
}