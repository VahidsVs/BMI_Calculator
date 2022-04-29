import 'package:bmi_calculator/components/constants.dart';
import 'package:bmi_calculator/components/reusable_cart.dart';
import 'package:flutter/material.dart';

Map<String, dynamic> data = {};

class ResultPage extends StatelessWidget {
  const ResultPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;

    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.bottomLeft,
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Your Result',
                  style: kTextStyleResult,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCardB(
              colorCard: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    data['result'],
                    style: kTextStyleResultText,
                  ),
                  Text(
                    data['bmi'],
                    style: kBMIStyleText,
                  ),
                  Text(
                    data['gender'] + data['interpretation'],
                    textAlign: TextAlign.center,
                    style: kBMIBodyText,
                  )
                ],
              ),
            ),
          ),
          ReusableC(
            onPress: () {
              Navigator.pushNamed(context, '/');
            },
            buttonLabel: 'RECALCULATE',
          ),
        ],
      ),
    );
  }
}
