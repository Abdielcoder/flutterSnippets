
import 'package:components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget{
  const ListView2Screen({super.key});
  //List of items
  final movies = const['Avengers','Infinity War','Harry potter','Moby-Dick'];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text(
          'List Items',),
     ),
      body:  Center(
        child: ListView.separated(//List
           // itemBuilder: (context, index) => Text('${books[index]}' ),
              itemBuilder: (context, index) => ListTile(
              leading: const Icon(Icons.smart_display, color: AppTheme.primary,),//First Icon
              title: Text(movies[index]),//Iterate list
              trailing: const Icon(Icons.arrow_forward_ios_outlined),//Last Icon
              onTap: () =>{},
            ),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: movies.length)//Items count
      ),
    );
  }

}