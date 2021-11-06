import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/pages/custom_flat_button.dart';

class CounterView extends StatefulWidget {
  const CounterView({Key? key, required this.base}) : super(key: key);

  final int base;

  @override
  State<CounterView> createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  int counter = 0;

  @override
  void initState() {
    super.initState();
    counter = widget.base;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
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
        )
      ],
    );
  }
}
