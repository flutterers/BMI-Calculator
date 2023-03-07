import 'package:flutter/material.dart';
import '../constants.dart';

class ReusableCard extends StatelessWidget {
  final Color cardColor;
  final Widget cardChild;
  final Function onPressed;
  final EdgeInsetsGeometry? margin;

  const ReusableCard({
    super.key,
    required this.cardChild,
    required this.cardColor,
    required this.onPressed,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPressed();
      },
      child: Container(
        margin: margin ?? const EdgeInsets.all(kMarginNo),
        decoration: BoxDecoration(
          color: cardColor,
          borderRadius: BorderRadius.circular(kMarginNo),
        ),
        child: cardChild,
      ),
    );
  }
}
