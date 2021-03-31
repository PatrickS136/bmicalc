import 'package:flutter/material.dart';
import 'package:bmicalc/components/genderButton.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmicalc/constants.dart';

class GenderRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
