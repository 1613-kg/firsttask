import 'package:auto_size_text/auto_size_text.dart';
import 'package:firsttask/Day%2014/Calculator/widgets/equalButton.dart';
import 'package:firsttask/Day%2014/Calculator/widgets/numberButton.dart';
import 'package:firsttask/Day%2014/Calculator/widgets/operationButton.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class homeCalculator extends StatefulWidget {
  const homeCalculator({super.key});

  @override
  State<homeCalculator> createState() => _homeCalculatorState();
}

class _homeCalculatorState extends State<homeCalculator> {
  String equation = "0";
  String ans = "0";
  String expression = "";

  buttonPressed(String buttonText) {
    setState(() {
      if (buttonText == 'C') {
        equation = "";
        ans = "0";
      } else if (buttonText == "=") {
        expression = equation;
        equation = "=" + equation;
        expression = expression.replaceAll('x', '*');
        expression = expression.replaceAll('÷', '/');
        try {
          Parser p = Parser();
          Expression exp = p.parse(expression);

          ContextModel cm = ContextModel();
          ans = '${exp.evaluate(EvaluationType.REAL, cm)}';
        } catch (e) {
          ans = "Error";
        }
      } else if (buttonText == "⌫") {
        if (equation == "0")
          equation = "0";
        else
          equation = equation.substring(0, equation.length - 1);
      } else {
        if (equation == "0") {
          equation = buttonText;
        } else {
          if (equation[0] == '=')
            equation = equation.substring(1, equation.length);
          equation += buttonText;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10.withOpacity(0.9),
      body: Container(
        margin: EdgeInsets.all(15),
        child: Stack(children: [
          Positioned(
            top: 100,
            child: Stack(
              children: [
                Container(
                  height: 200,
                  width: MediaQuery.sizeOf(context).width - 35,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                ),
                Positioned(
                  right: 40,
                  bottom: 20,
                  child: Column(
                    children: [
                      Container(
                        height: 130,
                        width: MediaQuery.sizeOf(context).width / 2,
                        child: AutoSizeText(
                          ans,
                          style: TextStyle(color: Colors.black, fontSize: 40),
                        ),
                      ),
                      Text(
                        equation,
                        style: TextStyle(color: Colors.black38, fontSize: 30),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
              bottom: 10,
              child: InkWell(
                onTap: () => buttonPressed('.'),
                child: numberButton(
                  text: '.',
                ),
              )),
          Positioned(
              bottom: 90,
              child: InkWell(
                onTap: () => buttonPressed('7'),
                child: numberButton(
                  text: '7',
                ),
              )),
          Positioned(
              bottom: 175,
              child: InkWell(
                onTap: () => buttonPressed('4'),
                child: numberButton(
                  text: '4',
                ),
              )),
          Positioned(
              bottom: 265,
              child: InkWell(
                onTap: () => buttonPressed('1'),
                child: numberButton(
                  text: '1',
                ),
              )),
          Positioned(
              bottom: 350,
              child: InkWell(
                onTap: () => buttonPressed('C'),
                child: numberButton(
                  text: 'C',
                ),
              )),
          Positioned(
              bottom: 10,
              left: 100,
              child: InkWell(
                onTap: () => buttonPressed('0'),
                child: numberButton(
                  text: '0',
                ),
              )),
          Positioned(
              bottom: 90,
              left: 100,
              child: InkWell(
                onTap: () => buttonPressed('8'),
                child: numberButton(
                  text: '8',
                ),
              )),
          Positioned(
              bottom: 175,
              left: 100,
              child: InkWell(
                onTap: () => buttonPressed('5'),
                child: numberButton(
                  text: '5',
                ),
              )),
          Positioned(
              bottom: 265,
              left: 100,
              child: InkWell(
                onTap: () => buttonPressed('2'),
                child: numberButton(
                  text: '2',
                ),
              )),
          Positioned(
              left: 100,
              bottom: 350,
              child: InkWell(
                onTap: () => buttonPressed('%'),
                child: numberButton(
                  text: '%',
                ),
              )),
          Positioned(
              right: 0,
              bottom: 10,
              child: InkWell(
                  onTap: () => buttonPressed('='), child: equalButton())),
          Positioned(
              bottom: 90,
              right: 0,
              child: InkWell(
                onTap: () => buttonPressed('x'),
                child: operationButton(
                  text: 'x',
                ),
              )),
          Positioned(
              bottom: 175,
              right: 0,
              child: InkWell(
                onTap: () => buttonPressed('+'),
                child: operationButton(
                  text: '+',
                ),
              )),
          Positioned(
              bottom: 265,
              right: 0,
              child: InkWell(
                onTap: () => buttonPressed('-'),
                child: operationButton(
                  text: '-',
                ),
              )),
          Positioned(
              bottom: 350,
              right: 0,
              child: InkWell(
                onTap: () => buttonPressed('÷'),
                child: operationButton(
                  text: '÷',
                ),
              )),
          Positioned(
              bottom: 350,
              right: 90,
              child: InkWell(
                  onTap: () => buttonPressed('⌫'),
                  child: numberButton(text: '⌫'))),
          Positioned(
              bottom: 265,
              right: 90,
              child: InkWell(
                onTap: () => buttonPressed('3'),
                child: numberButton(
                  text: '3',
                ),
              )),
          Positioned(
              bottom: 175,
              right: 90,
              child: InkWell(
                onTap: () => buttonPressed('6'),
                child: numberButton(
                  text: '6',
                ),
              )),
          Positioned(
              bottom: 90,
              right: 90,
              child: InkWell(
                onTap: () => buttonPressed('9'),
                child: numberButton(
                  text: '9',
                ),
              )),
        ]),
      ),
    );
  }
}
