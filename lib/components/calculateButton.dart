import 'package:bmicalc/constants.dart';
import 'package:flutter/material.dart';

class CalcButton extends StatelessWidget {
  final Function calculate;
  final bool maleSelected;
  CalcButton({this.calculate, this.maleSelected});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 50),
      width: double.infinity,
      height: 70,
      child: TextButton(
        child: Text(
          "CALCULATE",
          style: kCButton,
        ),
        onPressed: calculate,
        style: TextButton.styleFrom(
          backgroundColor: maleSelected ? darkBlue : darkRed,
        ),
      ),
    );
  }
}
