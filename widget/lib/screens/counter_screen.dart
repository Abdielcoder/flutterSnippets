import 'package:flutter/material.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';
import 'package:widget/utils/my_app_bar.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() =>
      _CounterScreenState(); //Crate State for StatefulWidget
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0; //Initialize on class scope
  //FUNCTIONS TO CALL STATES TO BUTTONS
  void increase() {
    counter++;
    setState(() {});
  }

  void decrease() {
    counter--;
    setState(() {});
  }

  void reset() {
    counter = 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // const fontSise40 = TextStyle(fontSize: 40);

    return Scaffold(
     // appBar: AppBar(title: const Text('Counter Screen')),
     appBar: MyAppBar.getAppBar('Counter Screen'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center, Aligment childrens
          children: <Widget>[
            const Text(
              'Numero de Tabs',
              style: TextStyle(
                  color: Colors.deepPurple,
                  fontWeight: FontWeight.bold,
                  fontSize: 40),
            ),
            Text(
              '$counter',
              style: const TextStyle(
                  color: Colors.indigo,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: flotatButton(
          //CALL THE REFERENCE OF FUCTIONS
          increaseFn: increase,
          decreaseFn: decrease,
          resetFn: reset),
    );

    throw UnimplementedError();
  }
}

class flotatButton extends StatelessWidget {
  //DECLARE FUNCTIONS
  final Function increaseFn;
  final Function decreaseFn;
  final Function resetFn;

  const flotatButton(
      {Key? key,
      //PASS REFERENCE TO CONSTRUCTOR
      required this.increaseFn,
      required this.decreaseFn,
      required this.resetFn})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Padding(
        padding: const EdgeInsets.only(bottom: 10, right: 10),
        child: FloatingActionButton(
          child: const Icon(Icons.rocket),
          onPressed: () => increaseFn(), //CALL FUNCTION WIDTH DE REFERENCE
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(bottom: 10, right: 10),
        child: FloatingActionButton(
          child: const Icon(Icons.expand_more),
          onPressed: () => decreaseFn(), //CALL FUNCTION WIDTH DE REFERENCE
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(bottom: 10, right: 10),
        child: FloatingActionButton(
          child: const Icon(Icons.refresh),
          onPressed: () => resetFn(), //CALL FUNCTION WIDTH DE REFERENCE
        ),
      ),
    ]);
  }
}
