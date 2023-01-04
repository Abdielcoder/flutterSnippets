
import 'package:components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class AlertsScreens extends StatelessWidget{
  const AlertsScreens({super.key});
  final books = const['Poder sin Limites','El poder Del Ahora','Harry potter','Moby-Dick'];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text('List Items'),),
      body:  Center(
        child: ListView(children:  [
          ...books.map((titles) =>  ListTile(
               leading: const Icon(Icons.account_circle_sharp,color: AppTheme.primary,),
               title: Text(titles),
                trailing: const Icon(Icons.arrow_forward_ios_outlined),
             )
          ).toList()

         // ListTile(
         //   leading: Icon(Icons.account_circle_sharp),
         //   title: Text('sdf'),
         // )
        ],)
      ),
    );
  }

}