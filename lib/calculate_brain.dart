import 'dart:math';

import 'package:flutter/material.dart';

class CalculationBrain {
  double height;
  double weight;
  double _bmi = 0;
  CalculationBrain({required this.height, required this.weight});

  String Calculate() {
    _bmi = weight / pow(height / 100, 2);

    return _bmi.toStringAsFixed(1);
  }

//Use cal() function because when i use _bmi it returns 0 in result function
  cal() {
    _bmi = weight / pow(height / 100, 2);

    return _bmi;
  }

  String Interpretation() {
    if (_bmi > 50 && _bmi < 60) {
      print(_bmi);
      return 'You are overweight we advice that you do a lot of sports and eat healthy';
    } else if (_bmi == 60) {
      print(_bmi);
      return 'You are normal great job keep living right';
    } else {
      print(_bmi);
      return 'Please ensure to check up on a nutritionist to get your weight stable';
    }
  }

  String results() {
    if (cal() > 50 && cal() < 60) {
      print((cal()));
      return 'overweight';
    } else {
      if (cal() == 60) {
        print(cal());
        return 'normal';
      } else {
        print(cal());
        return 'Underweight';
      }
    }
  }
}
