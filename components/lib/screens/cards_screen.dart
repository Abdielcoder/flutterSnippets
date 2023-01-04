
import 'package:flutter/material.dart';

import '../widgets/widgets.dart';



class CardsScreen extends StatelessWidget{
  const CardsScreen({super.key});
  final books = const['Poder sin Limites','El poder Del Ahora','Harry potter','Moby-Dick'];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text('Cards - Tarjetas'),),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        children: [
          CustomCardType1(),
          CustomCardType1(),
          CustomCardType1(),
          CustomCardType1(),
          CustomCardType1(),
          CustomCardType1(),
          CustomCardType1()
        ],
      )
    );
  }

}

