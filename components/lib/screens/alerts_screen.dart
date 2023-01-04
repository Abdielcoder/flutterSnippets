
import 'package:components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class AlertsScreens extends StatelessWidget{
  const AlertsScreens({super.key});
  final books = const['Poder sin Limites','El poder Del Ahora','Harry potter','Moby-Dick'];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    //  appBar: AppBar(title: const Text('List Items'),),
      body:  Center(
       child: ElevatedButton(
        child: const Padding(
          padding:  EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child:  Text('Mostrar Alerta'),
        ),
        onPressed: (){

        }, //When button set to null the button appear disabled
        )
      ) ,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.crisis_alert_rounded),
        onPressed: (){
          Navigator.pop(context);
        },
      ),
        );

  }

}