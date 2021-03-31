import 'package:flutter/material.dart';
import 'package:bmicalc/constants.dart';
import 'package:bmicalc/components/titleText.dart';
import 'package:bmicalc/components/genderRow.dart';
import 'package:bmicalc/components/hwSlider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BmiCalc extends StatefulWidget {
  @override
  _BmiCalcState createState() => _BmiCalcState();
}

class _BmiCalcState extends State<BmiCalc> {
  int height = 150;
  int weight = 75;
  void setHeight(newValue) {
    setState(() {
      height = newValue.round();
      print(height);
    });
  }

  void setWeight(newValue) {
    setState(() {
      weight = newValue.round();
      print(weight);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 70, left: 20, right: 60, bottom: 30),
        child: Column(
          children: [
            TitleText(),
            SizedBox(
              height: 20,
            ),
            GenderRow(),
            HWSlider(
              icon: FontAwesomeIcons.arrowsAltV,
              setValue: setHeight,
              value: height,
              min: 120,
              max: 220,
            ),
            HWSlider(
              icon: FontAwesomeIcons.weight,
              setValue: setWeight,
              value: weight,
              min: 35,
              max: 180,
            ),
          ],
        ),
      ),
    );
  }
}
