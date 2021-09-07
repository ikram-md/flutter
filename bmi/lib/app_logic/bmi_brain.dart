import 'dart:math';
class Calculator{
  Calculator({this.height, this.weight});
  final double height;
  final int weight;
  double _bmi;
  
  // ignore: non_constant_identifier_names
  String bmi_calculate(){
    //the furmola for calculating the bmi
    _bmi = this.weight / pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult(){
    if(this._bmi > 25)return "Overweight";
    else if (this._bmi > 18.5) return "Normal";
    else return "Underweight";
  }

  String getFeedback(){
    if(this._bmi > 25)return "You are going overweight. Consider working out";
    else if (this._bmi > 18.5) return "You are looking healthy! remain like that";
    else return "Apparently your weight is below average, Consider consuming more protins";
  }
}