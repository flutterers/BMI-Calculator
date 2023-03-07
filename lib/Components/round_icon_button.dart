import 'package:flutter/material.dart';
import '../constants.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback callback;

  const RoundIconButton({
    super.key,
    required this.icon,
    required this.callback,
  });

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: callback,
      elevation: 6.0,
      fillColor: kFloatingActionButtonBGColor,
      shape: const CircleBorder(),
      constraints: const BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      child: Icon(
        icon,
        color: Colors.white70,
      ),
    );
  }
}
