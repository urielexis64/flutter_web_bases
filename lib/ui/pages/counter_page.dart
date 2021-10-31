import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/pages/custom_flat_button.dart';
import 'package:flutter_application_1/ui/shared/custom_app_menu.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomAppMenu(),
          Spacer(),
          Text('Stateful Counter'),
          FittedBox(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'Counter: $counter',
                style: TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomFlatButton(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text('Incrementar'),
                ),
                onPressed: () => setState(() => counter++),
              ),
              CustomFlatButton(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text('Decrementar'),
                ),
                onPressed: () => setState(() => counter--),
              ),
            ],
          ),
          Spacer(),
        ],
      ),
    );
  }
}
