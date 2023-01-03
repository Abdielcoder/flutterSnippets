import 'package:components/models/menu_option.dart';
import 'package:components/router/app_routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const HomeScreen());
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Home Screen',style: TextStyle(color: Colors.yellow),),
          backgroundColor: Colors.black,
        ),
        body:  ListView.separated(
            separatorBuilder: (context, index) => const Divider(),
            itemCount: AppRoutes.menuOptions.length,
            itemBuilder: (context, index) =>   ListTile(
                    leading:  Icon(AppRoutes.menuOptions[index].icon),
                    title:    Text(AppRoutes.menuOptions[index].name),
                    trailing: const  Icon(Icons.arrow_forward),
                    onTap: () {
                      //Iterate de list of Routes
                      Navigator.of(context, rootNavigator: true).pushNamed(AppRoutes.menuOptions[index].route);
                    },
        ),
      ),
    )
    );
  }
}