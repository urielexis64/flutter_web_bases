import 'package:flutter/material.dart';
import 'package:flutter_application_1/provider/counter_provider.dart';
import 'package:flutter_application_1/ui/pages/custom_flat_button.dart';
import 'package:provider/provider.dart';

class CounterProviderView extends StatelessWidget {
  final int base;

  const CounterProviderView({Key? key, required this.base}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => CounterProvider(base),
        child: _CounterProviderBody());
  }
}

class _CounterProviderBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counterProvider = Provider.of<CounterProvider>(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Provider Counter'),
        FittedBox(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'Counter: ${counterProvider.counter}',
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
              onPressed: () => counterProvider.increment(),
            ),
            CustomFlatButton(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Text('Decrementar'),
              ),
              onPressed: () => counterProvider.decrement(),
            ),
          ],
        ),
      ],
    );
  }
}
