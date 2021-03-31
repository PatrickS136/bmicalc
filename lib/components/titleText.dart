import 'package:flutter/material.dart';
import 'package:bmicalc/constants.dart';

class TitleText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "BMI ",
          style: kBmiTextStyle,
        ),
        Text(
          "CALCULATOR",
          style: kCalculatorTextStyle,
        ),
      ],
    );
  }
}
