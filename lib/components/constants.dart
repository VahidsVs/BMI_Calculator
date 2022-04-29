import 'package:flutter/material.dart';

const kBottomContainerHeight = 80.0;
const kActiveCardColor = Color(0xFF1D1E33);
const kInactiveCardColor = Color(0xFF111328);
const kBottomContainerColor = Color(0xFFEB1555);
const kSliderActivePart = Color(0xFFFFFFFF);
const kTextStyle = TextStyle(color: Color(0xFF8D8E98), fontSize: 18);
const kSliderInactivePart = Color(0xFF8D8E98);
const kSliderThumb = Color(0xFFEB1555);
const kSliderThumbOverlay = Color(0x29EB1555);
const kRoundButtonColor = Color(0xFF4C4F5E);

const kSliderThemeData = SliderThemeData(
    activeTrackColor: kSliderActivePart,
    inactiveTrackColor: kSliderInactivePart,
    thumbColor: kSliderThumb,
    thumbShape: RoundSliderThumbShape(
      enabledThumbRadius: 12,
    ),
    overlayShape: RoundSliderOverlayShape(overlayRadius: 24),
    overlayColor: kSliderThumbOverlay);

const kNumberTextStyle = TextStyle(fontWeight: FontWeight.w900, fontSize: 50);

const kTextStyleCalculate = TextStyle(
    color: Color(0xFFFFFFFF), fontWeight: FontWeight.bold, fontSize: 25);
const kTextStyleResult = TextStyle(
    color: Color(0xFFFFFFFF), fontWeight: FontWeight.bold, fontSize: 50);

const kTextStyleResultText = TextStyle(
    color: Color(0xFF24D876), fontWeight: FontWeight.bold, fontSize: 22);

const kBMIStyleText = TextStyle(
    color: Color(0xFFFFFFFF), fontWeight: FontWeight.bold, fontSize: 100);
const kBMIBodyText = TextStyle(
  fontSize: 22,
);
