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
            itemCount: 10,
            itemBuilder: (_, __) =>   ListTile(
                    leading:  const Icon(Icons.rocket),
                    title:    const Text('Ti tulo de prueba'),
                    trailing: const  Icon(Icons.arrow_forward),
                    onTap: () {
                      Navigator.pushNamed(context, 'listPage1');
                    },
        ),
      ),
    )
    );
  }
}