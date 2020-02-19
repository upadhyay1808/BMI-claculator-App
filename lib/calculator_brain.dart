import 'dart:math';
class CalculatorBrain {
  CalculatorBrain({this.height,  this.weight});
  final int height;
  final int weight;
  double _bmi;
  String CalculateBMI()
  {
    _bmi=weight/pow(height/100,2);
    return _bmi.toStringAsFixed(1);
  }
  String getResult(){
    if(_bmi>=25)
      return 'OverWeight';
    else if (_bmi>18.5)
      return 'Normal';
    else{
      return 'Underweight';
    }
  }
  String getInterPretation(){
    if(_bmi>=25)
      return 'You have higher weight than normal ,try to exercose more';
    else if (_bmi>18.5)
      return 'You have a normal body weight.Good job keep it up';
    else{
      return 'You have a lower body weight than normal,Try to eat more';
    }
  }
}