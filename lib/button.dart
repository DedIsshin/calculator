import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String btnText;
  final Color btnColor;
  final Color textColor;
  final ValueSetter<String> calculation;

  const Button({
    required this.btnText,
    required this.calculation,
    this.textColor = Colors.white,
    this.btnColor = Colors.black,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15.0),
      color: btnColor,
      child: TextButton(
        onPressed: () {
          calculation(btnText);
        },
        child: Text(
          btnText,
          style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
