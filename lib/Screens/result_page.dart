import 'package:bmi_calculator/constants.dart';
import '../Components/reusable_card.dart';
import 'package:flutter/material.dart';
import '../Components/buttom_button.dart';

class ResultPage extends StatelessWidget {
  final String bmi;
  final String result;
  final String interpretation;
  ResultPage(
      {required this.bmi, required this.result, required this.interpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result Is',
                style: ktitleStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kactiveCardColor,
              cardchild: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(

                      result.toUpperCase(),
                      style: kresultText,
                    ),
                    Text(bmi, style: kBMIText),
                    Text(interpretation,
                        style: kinterpretetion, textAlign: TextAlign.center),
                  ],
                ),
              ),
              onPress: () {},
            ),
          ),
          BottomButton(
            buttonTitle: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
