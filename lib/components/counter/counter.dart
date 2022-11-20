import 'package:counter_app_ekel_ai_task/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key, required this.title});

  final String title;

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    if (_counter > 0) {
      setState(() {
        _counter--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: const Icon(Icons.add),
                onPressed: _incrementCounter,
                splashColor: Colors.transparent,
              ),
              CustomText(
                text: "$_counter",
              ),
              IconButton(
                icon: const Icon(Icons.remove),
                onPressed: _decrementCounter,
              ),
            ],
          )
        ],
      ),
    );
  }
}
