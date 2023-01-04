import 'package:components/models/models.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../screens/screens.dart';

class AppRoutes{
  static const initialRoute = 'home';
  static final menuOptions = <MenuOption>[//Model
    //Add riquired items and it types

    MenuOption(route:'listPage1' ,icon: Icons.list ,name: 'Books' ,screen:ListView1Screen()),
    MenuOption(route:'listPage2' ,icon: Icons.toc ,name: 'Movies' ,screen:ListView2Screen()),
    MenuOption(route:'alerts' ,icon: Icons.notifications_active ,name: 'Alerts - Alertas' ,screen:AlertsScreens()),
    MenuOption(route:'cards' ,icon: Icons.style ,name: 'Cards -  Tarjetas' ,screen:CardsScreen()),
    MenuOption(route:'avatar' ,icon: Icons.supervised_user_circle_outlined ,name: 'Avatar' ,screen: AvatarScreen() ),
    MenuOption(route:'animated' ,icon: Icons.gif_box ,name: 'Animation' ,screen: AnimatedScreen() ),
    MenuOption(route: 'inputs', name: 'Text Inputs', screen: const InputsScreen(), icon: Icons.input_rounded ),
    MenuOption(route: 'slider', name: 'Slider && Checks', screen: const SliderScreen(), icon: Icons.slow_motion_video_rounded),
   // MenuOption(route: 'listviewbuilder', name: 'InfiniteScrol & Pull to refresh', screen: const ListViewBuilderScreen(), icon: Icons.build_circle_outlined ),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes(){//Strint and Widget
    //Map for Routes
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    appRoutes.addAll({ 'home': (BuildContext contex) => const HomeScreen()});

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