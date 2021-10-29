import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/pages/custom_flat_button.dart';
import 'package:flutter_application_1/ui/shared/custom_app_menu.dart';

class CounterProviderPage extends StatefulWidget {
  const CounterProviderPage({Key? key}) : super(key: key);

  @override
  State<CounterProviderPage> createState() => _CounterProviderPageState();
}

class _CounterProviderPageState extends State<CounterProviderPage> {
  int counter = 15;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomAppMenu(),
          Spacer(),
          Text('Provider Counter'),
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
