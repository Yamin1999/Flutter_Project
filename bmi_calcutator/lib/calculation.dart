import 'dart:math';

class Calculation{

  int height;
  int weight;
  double _bmi;

  Calculation(this.height,this.weight);

  String calculateBMI ()
  {
    _bmi = weight / pow((height/100),2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult()
  {
    if(_bmi>=25)
      return "Overweight";
    else if (_bmi>18)
      return "Normal";
    else
      return "Underweight";
  }

  String getAdvice()
  {
    if(_bmi>=25)
      return "You have a heigher than normal body weight. Try to Exercise more!";
    else if (_bmi>18)
      return "You have a normal body weight. Good job!";
    else
      return "You have a lower than normal body weight. You can eat bit more!";

  }
}



