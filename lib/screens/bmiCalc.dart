import 'package:bmicalc/constants.dart';
import 'package:bmicalc/screens/results.dart';
import 'package:flutter/material.dart';
// import 'package:bmicalc/constants.dart';
import 'package:bmicalc/components/titleText.dart';
import 'package:bmicalc/components/genderRow.dart';
import 'package:bmicalc/components/hwSlider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmicalc/components/calculateButton.dart';
import 'package:bmicalc/calculations.dart';
import 'results.dart';

class BmiCalc extends StatefulWidget {
  @override
  _BmiCalcState createState() => _BmiCalcState();
}

class _BmiCalcState extends State<BmiCalc> {
  int height = 150;
  int weight = 75;
  bool maleSelected = true;
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

  void selectGender() {
    setState(() {
      (maleSelected) ? maleSelected = false : maleSelected = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: grey,
        padding: EdgeInsets.only(top: 70, left: 20, right: 60, bottom: 30),
        child: Column(
          children: [
            TitleText(),
            SizedBox(
              height: 20,
            ),
            GenderRow(selectGender: selectGender),
            HWSlider(
              icon: FontAwesomeIcons.arrowsAltV,
              setValue: setHeight,
              value: height,
              min: 120,
              max: 220,
              maleSelected: maleSelected,
            ),
            HWSlider(
              icon: FontAwesomeIcons.weight,
              setValue: setWeight,
              value: weight,
              min: 35,
              max: 180,
              maleSelected: maleSelected,
            ),
            CalcButton(
              maleSelected: maleSelected,
              calculate: () {
                Calculations calc =
                    Calculations(height: height, weight: weight);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Results(
                      maleSelected: maleSelected,
                      result: calc.calculateBMI(),
                      resultText: calc.getResult(),
                      description: calc.getInterpretation(),
                    ),
                  ),
                );
              },
              text: "CALCULATE",
            )
          ],
        ),
      ),
    );
  }
}
