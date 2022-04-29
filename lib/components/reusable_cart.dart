import 'package:flutter/material.dart';
import 'constants.dart';

class ReusableCard extends StatelessWidget {
  const ReusableCard(
      {required this.colorCard,
      required this.cardChild,
      required this.onPress});

  final Color colorCard;
  final Widget cardChild;
  final Function() onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: colorCard,
        ),
      ),
    );
  }
}

class ReusableCardB extends StatelessWidget {
  const ReusableCardB({
    required this.colorCard,
    required this.cardChild,
  });

  final Color colorCard;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: colorCard,
      ),
    );
  }
}

class ReusableC extends StatelessWidget {
  const ReusableC({
    Key? key,
    required this.buttonLabel,
    required this.onPress,
  }) : super(key: key);

  final String buttonLabel;
  final Function() onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: Center(
          child: Text(
            buttonLabel,
            style: kTextStyleCalculate,
          ),
        ),
        padding: const EdgeInsets.only(bottom: 20),
        width: double.infinity,
        color: kBottomContainerColor,
        height: kBottomContainerHeight,
      ),
    );
  }
}
