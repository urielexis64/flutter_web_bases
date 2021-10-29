import 'package:flutter/material.dart';

class CustomFlatButton extends StatelessWidget {
  const CustomFlatButton(
      {Key? key, required this.onPressed, required this.child, this.color})
      : super(key: key);

  final VoidCallback onPressed;
  final Widget child;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: TextButton.styleFrom(
          primary: color ?? Colors.pink,
        ),
        onPressed: onPressed,
        child: child);
  }
}
