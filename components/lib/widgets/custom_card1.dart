import 'package:components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children:  [
         const ListTile(
            leading: Icon(Icons.photo_album, color: AppTheme.primary),
            title: Text('Ejemplo de tarjeta'),
            subtitle: Text('Texto de prueba para la tarjeta recien creado, para '
                'poder ubicar dimensiones tanto delo alto como de lo ancho, tambien'
                'como el aspecto final de la tarjeta'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: (){}, child: Text('Cancel')),

                 TextButton(onPressed: (){}, child: Text('Ok')),
              ],
            ),
          )
        ],
      ),
    );
  }
}