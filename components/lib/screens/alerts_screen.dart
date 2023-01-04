
import 'package:components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class AlertsScreens extends StatelessWidget{
  const AlertsScreens({super.key});
  final books = const['Poder sin Limites','El poder Del Ahora','Harry potter','Moby-Dick'];

  //Function IOS Alert
   void displayDialogIos(){}

  //Function Android Alert
  void displayDialog(BuildContext context){
    showDialog(
        barrierDismissible: false,//Close the dialog from out of the widget
        context: context, builder: (context){
          return AlertDialog(
            elevation: 5,
            title: const Text('Titulo'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('This is an Alert'),
                SizedBox(height: 10,),
                FlutterLogo(size: 100)
              ],
            ),
            actions: [
              TextButton(onPressed: () => Navigator.pop(context), child: Text('Cancel'))
            ],
          );
    });
  }

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
        onPressed: () => displayDialog(context)//When button set to null the button appear disabled
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