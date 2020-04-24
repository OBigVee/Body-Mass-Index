import 'dart:math';

class Calculation {
  Calculation({this.height, this.weight});
  final int height;
  final int weight;
  double _result;

  dynamic Calculator() {
    double Mheight = height / 100;
    //FORMULA = KG/M^2
    _result = weight / pow(Mheight, 2);
    return _result.toStringAsFixed(1);
  }

  String getResult() {
    if (_result >= 25) {
      return 'OverWeight';
    } else if (_result > 18.5) {
      return 'Normal';
    } else {
      return 'Under Weight';
    }
  }

  String getIntrepretation() {
    if (_result >= 25) {
      return 'You weight is higher than normal';
    } else if (_result > 18.5) {
      return 'you have a normal body weigt. you have done a good job here';
    } else {
      return ' your weight is extremely lower than an average normal body weight, you to ingest food more';
    }
  }
}
