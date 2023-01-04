
import 'package:flutter/material.dart';

import '../widgets/widgets.dart';



class CardsScreen extends StatelessWidget{

  const CardsScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text('Cards - Tarjetas'),),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        children: const [
          CustomCardType1(),
          SizedBox(height: 10,),
          CustomCardType2(url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6OE6ZBYzUirikgVjODSmDlApelJ6ElbHk2w&usqp=CAU"),
          SizedBox(height: 10,),
          CustomCardType2(url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1DlO-By-NkXNNPDo-jzaWK8Oao-hoH60VJtQWhrvCTyAIlY9guJ4HIqrnA0gqEDhykCo&usqp=CAU",name: 'CAR'),
          SizedBox(height: 10,),
          CustomCardType2(url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXISQTr-6o324q_cnzHKRfISjzhB4MYCyrug&usqp=CAU",name: 'WORDL',),
          SizedBox(height: 10,),
          CustomCardType2(url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJFiV9mhNAVRv3tutM2IsOsonxSG_dzneTSxsHCl4VvWhLy5JH_a2EKHZXC2FquPgq9as&usqp=CAU"),
          SizedBox(height: 10,),
          CustomCardType2(url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTxaFnKTs-TJ7Af_ujfMrXFSfzYharQrmGS8Q&usqp=CAU"),
        ],
      )
    );
  }

}

