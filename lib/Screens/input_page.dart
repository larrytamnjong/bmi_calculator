import 'package:bmi_calculator/Screens/result_page.dart';
import 'package:bmi_calculator/calculate_brain.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../Components/buttom_button.dart';
import '../Components/icon_content.dart';
import 'package:bmi_calculator/Components/reusable_card.dart';
import '../constants.dart';
import 'package:flutter_toastr/flutter_toastr.dart';

import '../Components/round_button.dart';

// const double buttomContainerHeight = 70.0;
// const activeCardColor = Color(0xFF1D1E33);
// const inactiveCardColor = Color(0xFF111328);
// const buttomBarColor = Color(0xFFEB15555);

enum Gender {
  male,
  female,
  waiting,
}

double height = 25.0;
double weight = 15;

int age = 0;

Gender selectedGender = Gender.waiting;

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  // Color maleCardColor = inactiveCardColor;
  // Color femaleCardColor = inactiveCardColor;
  // void updateColor(Gender selectedGender) {
  //   if (selectedGender == Gender.male) {
  //     if (maleCardColor == inactiveCardColor) {
  //       maleCardColor = activeCardColor;
  //       femaleCardColor = inactiveCardColor;
  //     } else {
  //       maleCardColor = inactiveCardColor;
  //     }
  //   }
  //
  //   if (selectedGender == Gender.female) {
  //     if (femaleCardColor == inactiveCardColor) {
  //       femaleCardColor = activeCardColor;
  //       maleCardColor = inactiveCardColor;
  //     } else {
  //       femaleCardColor = inactiveCardColor;
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
          //use this to make the container not to shrink
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                      cardchild: IconContent(
                        icon: Icon(
                          FontAwesomeIcons.mars,
                          size: 80.0,
                        ),
                        label: 'MALE',
                      ),
                      colour: selectedGender == Gender.male
                          ? kactiveCardColor
                          : kinactiveCardColor,
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                      cardchild: IconContent(
                        icon: Icon(
                          FontAwesomeIcons.venus,
                          size: 80.0,
                        ),
                        label: 'FEMALE',
                      ),
                      colour: selectedGender == Gender.female
                          ? kactiveCardColor
                          : kinactiveCardColor,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(
                cardchild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'HEIGHT',
                      style: ktextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          '$height',
                          style: ktextStyle2,
                        ),
                        Text(
                          'CM',
                          style: ktextStyle,
                        ),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        thumbColor: Colors.pink,
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: Colors.grey,
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 15.0),
                        overlayShape:
                            RoundSliderThumbShape(enabledThumbRadius: 20.0),
                        overlayColor: Color(0x80EB1555),
                      ),
                      child: Slider(
                        value: height,
                        min: 25.0,
                        max: 200.0,
                        onChanged: (double newValue) {
                          setState(
                            () {
                              height = newValue.roundToDouble();
                            },
                          );
                        },
                      ),
                    )
                  ],
                ),
                colour: kactiveCardColor,
                onPress: () {},
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      cardchild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'WEIGHT',
                            style: ktextStyle,
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            '$weight',
                            style: ktextStyle2,
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(
                                onPress: () {
                                  setState(
                                    () {
                                      weight += 1;
                                      //weight ++;
                                    },
                                  );
                                },
                                icon: FontAwesomeIcons.plus,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              RoundIconButton(
                                onPress: () {
                                  setState(
                                    () {
                                      weight -= 1;
                                      // weight --;
                                    },
                                  );
                                },
                                icon: FontAwesomeIcons.minus,
                              ),
                            ],
                          ),
                        ],
                      ),
                      colour: kactiveCardColor,
                      onPress: () {},
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      cardchild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'AGE',
                            style: ktextStyle,
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            '$age',
                            style: ktextStyle2,
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(
                                onPress: () {
                                  setState(
                                    () {
                                      age += 1;
                                      //weight ++;
                                    },
                                  );
                                },
                                icon: FontAwesomeIcons.plus,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              RoundIconButton(
                                onPress: () {
                                  setState(
                                    () {
                                      age -= 1;
                                      // weight --;
                                    },
                                  );
                                },
                                icon: FontAwesomeIcons.minus,
                              ),
                            ],
                          ),
                        ],
                      ),
                      colour: kactiveCardColor,
                      onPress: () {},
                    ),
                  ),
                ],
              ),
            ),
            BottomButton(
              buttonTitle: 'CALCULATE',
              onTap: () {
                CalculationBrain calc =
                    CalculationBrain(height: height, weight: weight);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultPage(
                      result: calc.results(),
                      bmi: calc.Calculate(),
                      interpretation: calc.Interpretation(),
                    ),
                  ),
                );
              },
            ),
          ]),
    );
  }
}
