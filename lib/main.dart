import 'package:flutter/material.dart';
import 'package:bmicalc/screens/bmiCalc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BMI Calculator',
      home: BmiCalc(),
    );
  }
}
