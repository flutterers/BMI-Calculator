import 'package:flutter/material.dart';

const marginNo = 15.0;

class ReusableCard extends StatelessWidget {
  final Color cardColor;
  final Widget cardChild;
  const ReusableCard({
    super.key,
    required this.cardChild,
    required this.cardColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(marginNo),
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(marginNo),
      ),
      child: cardChild,
    );
  }
}
