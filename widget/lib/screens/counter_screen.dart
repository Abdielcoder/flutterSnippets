import 'package:flutter/material.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';
import 'package:widget/utils/my_app_bar.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();//Crate State for StatefulWidget
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;//Initialize on class scope
  @override
  Widget build(BuildContext context) {
    // const fontSise40 = TextStyle(fontSize: 40);

    return Scaffold(
      appBar: AppBar(title: const Text('Counter Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center, Aligment childrens
          children:  <Widget>[
            const Text(
              'Numero de Tabs',
              style: TextStyle(
                  color: Colors.deepPurple,
                  fontWeight: FontWeight.bold,
                  fontSize: 40),
            ),
            Text('$counter',
              style: const TextStyle(
                  color: Colors.indigo,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FloatingActionButton(
          child: const Icon(Icons.rocket),
          onPressed: () {
            counter++;//Increment Counter
            setState(() {//This is a anonymus function

            });
          },
        ),
      ),
    );

    throw UnimplementedError();
  }
}
