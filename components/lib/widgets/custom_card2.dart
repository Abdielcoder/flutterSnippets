import 'package:components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  final String url;
  final String? name;
  const CustomCardType2({
    Key? key, required this.url, this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,//Rounded top card cornes
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20)
      ),
      elevation: 30,
      shadowColor: AppTheme.primary.withOpacity(0.6),
      child: Column(
        children:    [
           FadeInImage(image: NetworkImage(url),
            placeholder: AssetImage('assets/images/loader.gif'),
          width: double.infinity,
          height: 230,
          fit: BoxFit.cover,
          fadeInDuration: Duration(milliseconds: 3000),
          ),
          if(name != null)
            Container(
              //Alignament to left
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.only(right: 20,top: 10,bottom: 10),
              child: Text(name!),
            )
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.end,
          //     children: [
          //       TextButton(onPressed: (){}, child: Text('Cancel')),
          //
          //        TextButton(onPressed: (){}, child: Text('Ok')),
          //     ],
          //   ),
          // )
        ],
      ),
    );
  }
}