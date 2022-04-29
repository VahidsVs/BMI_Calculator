import 'dart:math';

class BMIBrain {
  BMIBrain({required this.height, required this.weight});

  final int height;
  final int weight;
  late double _bmi;

  String calculateBMI() {
    _bmi = weight / (pow(height / 100, 2));
    return _bmi.toStringAsFixed(1);
  }

  String result() {
    String result = '';
    if (_bmi < 18.5) {
      result = 'Underweight';
    } else if (_bmi > 18.5 && _bmi < 24.9) {
      result = 'Normal';
    } else {
      result = 'Overweight';
    }

    return result;
  }

  String interpretation() {
    String result = '';
    if (_bmi < 18.5) {
      result = 'You should eat more healthy food to gain weight.';
    } else if (_bmi > 18.5 && _bmi < 24.9) {
      result = 'You are healty and normal, good job!';
    } else {
      result = 'You should go on a diet and eat less food to lose weight.';
    }

    return result;
  }
}
