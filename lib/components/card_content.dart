import 'package:flutter/material.dart';
import 'constants.dart';

class CardContent extends StatelessWidget {
  const CardContent({required this.icon, required this.lable});
  final IconData icon;
  final String lable;

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Icon(icon, size: 80, color: Colors.white),
      SizedBox(height: 15),
      Text(
        lable,
        style: kTextStyle,
      )
    ]);
  }
}

class RoundIconButton extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables
  RoundIconButton({required this.icon, required this.onPress});
  final IconData icon;
  final Function() onPress;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPress,
      onLongPress: onPress,
      child: Icon(icon, color: kSliderActivePart),
      constraints: BoxConstraints.tightFor(width: 55, height: 56),
      shape: CircleBorder(),
      fillColor: kRoundButtonColor,
      disabledElevation: 6.0,
      elevation: 6.0,
    );
  }
}
