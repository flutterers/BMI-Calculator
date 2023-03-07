import 'dart:math';

import 'enum_bmi_range_type.dart';

class CalculatorBrain {
  final double weight;
  final double height;
  late final BMIRangeType _bmiType;
  late final double _bmi;

  CalculatorBrain({
    required this.weight,
    required this.height,
  }) {
    _bmi = weight / (pow(height / 100, 2));
    _bmiType = (_bmi >= 18.5 && _bmi <= 25)
        ? BMIRangeType.Normal
        : (_bmi > 25
            ? BMIRangeType.Obese
            : (_bmi < 18.5 ? BMIRangeType.Underweight : BMIRangeType.None));
  }

  String getBMI() => _bmi.toStringAsFixed(1);
  String getType() => _bmiType.name.toString().toUpperCase();
  String getInterpretation() => _bmiType.getMessage();
}
