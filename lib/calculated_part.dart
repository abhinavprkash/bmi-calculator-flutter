import 'dart:math';

class CalculatedPart {
  CalculatedPart({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5 && _bmi < 25) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'Thoda Mota ho gya hai tu, thoda exercise kar le';
    } else if (_bmi > 18.5 && _bmi < 25) {
      return 'Sahi ja rha hai, go for six packs';
    } else {
      return 'thoda khana kha le, bhut dubla ho gya hai tu';
    }
  }
}
