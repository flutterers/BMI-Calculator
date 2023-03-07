import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({
    super.key,
    required this.callback,
    required this.buttonText,
  });

  final VoidCallback callback;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kBottomButtonColor,
      width: double.infinity,
      height: kBottomButtonHeight,
      margin: const EdgeInsets.only(top: kMarginNo),
      child: Center(
        child: GestureDetector(
          onTap: callback,
          child: Text(
            buttonText.toUpperCase(),
            style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20.0,
                letterSpacing: 1.0),
          ),
        ),
      ),
    );
  }
}
