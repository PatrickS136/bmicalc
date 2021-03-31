import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:bmicalc/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmicalc/components/genderButton.dart';
import 'package:bmicalc/components/titleText.dart';

import '../constants.dart';

class BmiCalc extends StatefulWidget {
  @override
  _BmiCalcState createState() => _BmiCalcState();
}

class _BmiCalcState extends State<BmiCalc> {
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
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GenderButton(
                  genderIcon: FontAwesomeIcons.mars,
                  text: "Male",
                  color: darkBlue,
                ),
                SizedBox(
                  width: 20,
                ),
                GenderButton(
                  color: darkRed,
                  genderIcon: FontAwesomeIcons.venus,
                  text: 'Female',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
