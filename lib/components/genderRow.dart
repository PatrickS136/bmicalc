import 'package:flutter/material.dart';
import 'package:bmicalc/components/genderButton.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmicalc/constants.dart';

class GenderRow extends StatelessWidget {
  final Function selectGender;
  GenderRow({this.selectGender});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 40, top: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          GenderButton(
            genderIcon: FontAwesomeIcons.mars,
            text: "Male",
            color: darkBlue,
            callback: selectGender,
          ),
          SizedBox(
            width: 20,
          ),
          GenderButton(
            color: darkRed,
            genderIcon: FontAwesomeIcons.venus,
            text: 'Female',
            callback: selectGender,
          ),
        ],
      ),
    );
  }
}
