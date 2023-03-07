enum BMIRangeType {
  Normal,
  Underweight,
  Obese,
  None,
}

extension BMIRangeType_Extension on BMIRangeType {
  String getMessage() {
    switch (this) {
      case BMIRangeType.None:
        return "MWAHAHHAHAHAAH!";

      case BMIRangeType.Normal:
        return "You have a normal Body Weight. Keep Going!";

      case BMIRangeType.Underweight:
        return "You have a lower than normal Body Weight. Try to Eat More :D !";

      case BMIRangeType.Obese:
        return "You have a higher than normal Body Weight. Try to exercise more!";
    }
  }
}
