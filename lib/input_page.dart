import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

//measures
const bottomButtonHeight = 80.0;

//colors
const activeCardColor = Color(0xFF1D1F33);
const inactiveCardColor = Color(0xFF111328);
const bottomButtonColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;

  Color updateColor(Color cardColor) {
    if (cardColor == inactiveCardColor) {
      return activeCardColor;
    }
    return inactiveCardColor;
  }

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
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        maleCardColor = updateColor(maleCardColor);
                      });
                    },
                    child: ReusableCard(
                      cardColor: maleCardColor,
                      cardChild: const IconContent(
                        icon: FontAwesomeIcons.mars,
                        label: "Male",
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        femaleCardColor = updateColor(femaleCardColor);
                      });
                    },
                    child: ReusableCard(
                      cardColor: femaleCardColor,
                      cardChild: const IconContent(
                        icon: FontAwesomeIcons.venus,
                        label: "Female",
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              cardColor: activeCardColor,
              cardChild: Container(),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                      cardColor: activeCardColor, cardChild: Container()),
                ),
                Expanded(
                  child: ReusableCard(
                      cardColor: activeCardColor, cardChild: Container()),
                ),
              ],
            ),
          ),
          Container(
            color: bottomButtonColor,
            width: double.infinity,
            height: bottomButtonHeight,
            margin: const EdgeInsets.only(top: marginNo),
          )
        ],
      ),
    );
  }
}
