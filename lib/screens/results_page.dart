import '/constants.dart';
import '../components/reusable_card.dart';
import 'package:flutter/material.dart';

import '../components/bottom_button.dart';

class ResultsPage extends StatelessWidget {
  final bmiResult;
  final resultText;
  final String interpretation;

  const ResultsPage({
    Key? key,
    required this.bmiResult,
    required this.resultText,
    required this.interpretation,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('BMI Calculator')),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: const Center(
                    child: Text('You Result', style: kTitleTextStyle),
                  )),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                colour: kActiveCardColour,
                cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(resultText.toUpperCase(), style: kResultTextStyle),
                      Text(bmiResult, style: kBMITextStyle),
                      Center(
                          child: Text(interpretation, style: kBodyTextStyle)),
                    ]),
              ),
            ),
            BottomButton(
              buttonTitle: 'RE-CALCULATE',
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ]),
    );
  }
}
