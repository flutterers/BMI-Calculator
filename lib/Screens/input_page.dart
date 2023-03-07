import 'package:bmi_calculator/Screens/results_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../calculator_brain.dart';
import '../enum_gender.dart';
import '../Components/icon_content.dart';
import 'package:bmi_calculator/Components/reusable_card.dart';
import '../constants.dart';
import 'package:bmi_calculator/Components//plus_minus_card.dart';
import '../Components/bottom_button.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender = Gender.none;
  double height = kHeightInit.toDouble();
  double weight = 50.0;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("BMI Calculator"),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    onPressed: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    cardColor: selectedGender == Gender.male
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: const IconContent(
                      icon: FontAwesomeIcons.mars,
                      label: "MALE",
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPressed: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    cardColor: selectedGender == Gender.female
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: const IconContent(
                      icon: FontAwesomeIcons.venus,
                      label: "FEMALE",
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              onPressed: () {},
              cardColor: kInactiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "HEIGHT",
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toInt().toString(),
                        style: kNumberStyle,
                      ),
                      const Text(
                        "cm",
                        style: kLabelTextStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      thumbShape:
                          const RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape:
                          const RoundSliderOverlayShape(overlayRadius: 30.0),
                      trackHeight: 1.5,
                      overlayColor: kBottomButtonColorOverlay,
                      activeTrackColor: Colors.white,
                    ),
                    child: Slider(
                      value: height,
                      min: 120.0,
                      max: 220.0,
                      onChanged: (double newValue) {
                        setState(() {
                          // print(newValue);
                          height = newValue.roundToDouble();
                        });
                      },
                      inactiveColor: kLabelColor,
                      thumbColor: kBottomButtonColor,
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    onPressed: () {},
                    cardColor: kInactiveCardColor,
                    cardChild: PlusMinusCard(
                      label: "WEIGHT",
                      variant: weight,
                      plusButtonCallback: () {
                        setState(() {
                          weight++;
                        });
                      },
                      minusButtonCallback: () {
                        setState(() {
                          weight--;
                        });
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPressed: () {},
                    cardColor: kInactiveCardColor,
                    cardChild: PlusMinusCard(
                      label: "AGE",
                      variant: age.toDouble(),
                      plusButtonCallback: () {
                        setState(() {
                          age++;
                        });
                      },
                      minusButtonCallback: () {
                        setState(() {
                          age--;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
            buttonText: "Calculate your BMI",
            callback: () {
              CalculatorBrain calc =
                  CalculatorBrain(weight: weight, height: height);

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultsPage(
                    calculatorBrain: calc,
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
