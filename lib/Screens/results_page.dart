import 'dart:math';

import 'package:bmi_calculator/Components/bottom_button.dart';
import 'package:bmi_calculator/calculator_brain.dart';
import 'package:bmi_calculator/enum_bmi_range_type.dart';
import 'package:bmi_calculator/Components/reusable_card.dart';
import 'package:flutter/material.dart';
import '../constants.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({Key? key, required this.calculatorBrain})
      : super(key: key);

  final CalculatorBrain calculatorBrain;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "BMI Calculator".toUpperCase(),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 32.0),
              child: Text(
                "Your Result",
                style: kLabelTextStyle.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 40.0,
                    color: Colors.white),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              margin: const EdgeInsets.all(25),
              cardChild: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      calculatorBrain.getType(),
                      style: kLabelTextStyle.copyWith(
                        color: const Color(0xFF24D876),
                        fontSize: 23,
                      ),
                    ),
                    Text(
                      calculatorBrain.getBMI(),
                      style: kNumberStyle.copyWith(
                        fontSize: 80,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: Text(
                        calculatorBrain.getInterpretation(),
                        textAlign: TextAlign.justify,
                        style: kLabelTextStyle.copyWith(
                          fontSize: 20.0,
                          color: Colors.white70,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              cardColor: kActiveCardColor,
              onPressed: () {},
            ),
          ),
          BottomButton(
            buttonText: "Recalculate",
            callback: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
