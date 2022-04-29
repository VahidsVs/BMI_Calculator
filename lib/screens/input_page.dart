import 'package:bmi_calculator/components/bmi_brain.dart';
import '../components/reusable_cart.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/card_content.dart';
import '../components/constants.dart';

enum Gender { male, female, n }
enum Button { plus, minus, weight, age, n }

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return bodyContent();
  }

  int height = 180;
  int weight = 60;
  int age = 20;
  Button selectedButton = Button.n;
  Gender selectedGender = Gender.n;
  String you = 'Sir ';

  void setColor(Gender selectedGender) {
    setState(() {
      this.selectedGender = selectedGender;
    });
  }

  void changeValue(Button button, Button mode) {
    setState(() {
      if (mode == Button.weight)
        button == Button.plus ? weight++ : weight--;
      else
        button == Button.plus ? age++ : age--;
    });
  }

  Scaffold bodyContent() {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setColor(Gender.male);
                    },
                    colorCard: selectedGender == Gender.male
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: CardContent(
                      icon: FontAwesomeIcons.mars,
                      lable: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setColor(Gender.female);
                      you = 'Madam ';
                    },
                    colorCard: selectedGender == Gender.female
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: CardContent(
                      icon: FontAwesomeIcons.venus,
                      lable: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: kTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: kNumberTextStyle,
                      ),
                      Text(
                        'cm',
                        style: kTextStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: kSliderThemeData,
                    child: Slider(
                      value: height.toDouble(),
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      },
                      thumbColor: kSliderThumb,
                      min: 120,
                      max: 220,
                    ),
                  )
                ],
              ),
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: kActiveCardColor,
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCardB(
                    colorCard: kActiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Weight',
                          style: kTextStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPress: () {
                                changeValue(Button.plus, Button.weight);
                              },
                            ),
                            SizedBox(width: 10),
                            RoundIconButton(
                              onPress: () {
                                changeValue(Button.minus, Button.weight);
                              },
                              icon: FontAwesomeIcons.minus,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCardB(
                    colorCard: kActiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Age',
                          style: kTextStyle,
                        ),
                        Text(
                          age.toString(),
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              onPress: () {
                                changeValue(Button.plus, Button.age);
                              },
                              icon: FontAwesomeIcons.plus,
                            ),
                            SizedBox(width: 10),
                            RoundIconButton(
                              onPress: () {
                                changeValue(Button.minus, Button.age);
                              },
                              icon: FontAwesomeIcons.minus,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          ReusableC(
            onPress: () {
              BMIBrain bmiBrain = BMIBrain(weight: weight, height: height);
              Navigator.pushNamed(
                context,
                'first',
                arguments: {
                  'bmi': bmiBrain.calculateBMI(),
                  'result': bmiBrain.result(),
                  'interpretation': bmiBrain.interpretation(),
                  'gender': you,
                },
              );
            },
            buttonLabel: 'CALCULATE',
          ),
        ],
      ),
    );
  }
}
