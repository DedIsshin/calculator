import 'package:flutter/material.dart';

import 'button.dart';
import 'calculation_helper.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  final _helper = CalculationHelper();
  String text = '0';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.orange[800],
        title: const Text('Calculator'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
                child: Text(
                  text,
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 80.0,
                  ),
                ),
              ),
            ],
          ),
          const Divider(
            height: 1.0,
            color: Colors.white,
            indent: 37.0,
            endIndent: 37.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Button(
                btnText: 'AC',
                textColor: Colors.orange,
                calculation: onBtnTap,
              ),
              Button(
                btnText: '⌫',
                textColor: Colors.orange,
                calculation: onBtnTap,
              ),
              Button(
                btnText: '%',
                textColor: Colors.orange,
                calculation: onBtnTap,
              ),
              Button(
                btnText: '/',
                textColor: Colors.orange,
                calculation: onBtnTap,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Button(
                btnText: '7',
                calculation: onBtnTap,
              ),
              Button(
                btnText: '8',
                calculation: onBtnTap,
              ),
              Button(
                btnText: '9',
                calculation: onBtnTap,
              ),
              Button(
                btnText: 'x',
                textColor: Colors.orange,
                calculation: onBtnTap,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Button(btnText: '4', calculation: onBtnTap),
              Button(
                btnText: '5',
                calculation: onBtnTap,
              ),
              Button(
                btnText: '6',
                calculation: onBtnTap,
              ),
              Button(
                btnText: '-',
                textColor: Colors.orange,
                calculation: onBtnTap,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Button(
                btnText: '1',
                calculation: onBtnTap,
              ),
              Button(
                btnText: '2',
                calculation: onBtnTap,
              ),
              Button(
                btnText: '3',
                calculation: onBtnTap,
              ),
              Button(
                btnText: '+',
                textColor: Colors.orange,
                calculation: onBtnTap,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Button(
                btnText: 'N',
                textColor: Colors.orange,
                calculation: onBtnTap,
              ),
              Button(
                btnText: '0',
                calculation: onBtnTap,
              ),
              Button(
                btnText: '.',
                calculation: onBtnTap,
              ),
              Button(
                btnText: '=',
                textColor: Colors.orange,
                calculation: onBtnTap,
              ),
            ],
          ),
        ],
      ),
    );
  }

  void onBtnTap(btnText) {
    final finalResult = _helper.calculation(btnText);
    setState(() {
      text = finalResult;
    });
  }
}
