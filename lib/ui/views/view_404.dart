import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/pages/custom_flat_button.dart';

class View404 extends StatelessWidget {
  const View404({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(children: [
      Text('404',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 50,
          )),
      Text('No se encontró la página', style: TextStyle(fontSize: 30)),
      CustomFlatButton(
        onPressed: () => Navigator.pushReplacementNamed(context, '/stateful'),
        child: Text('Volver'),
      )
    ]));
  }
}
