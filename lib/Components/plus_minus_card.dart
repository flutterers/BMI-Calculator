import 'package:bmi_calculator/Components/round_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PlusMinusCard extends StatelessWidget {
  const PlusMinusCard({
    super.key,
    required this.variant,
    required this.plusButtonCallback,
    required this.minusButtonCallback,
    required this.label,
  });

  final double variant;
  final VoidCallback plusButtonCallback;
  final VoidCallback minusButtonCallback;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          label,
          style: kLabelTextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Text(
              variant.toInt().toString(),
              style: kNumberStyle,
            ),
            // const Text(
            //   "kg",
            //   style: kLabelTextStyle,
            // ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RoundIconButton(
              icon: FontAwesomeIcons.minus,
              callback: minusButtonCallback,
            ),
            const SizedBox(width: 10),
            RoundIconButton(
              icon: FontAwesomeIcons.plus,
              callback: plusButtonCallback,
            ),
          ],
        )
      ],
    );
  }
}
