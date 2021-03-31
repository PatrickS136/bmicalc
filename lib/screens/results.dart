import 'package:bmicalc/components/calculateButton.dart';
import 'package:bmicalc/constants.dart';
import 'package:flutter/material.dart';

class Results extends StatelessWidget {
  final String description;
  final String result;
  final String resultText;
  final bool maleSelected;

  Results(
      {@required this.description,
      @required this.result,
      @required this.resultText,
      @required this.maleSelected});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: grey,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          SizedBox(
            height: 40,
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Center(
                child: Text(
                  'Your Result',
                  style: (maleSelected == true) ? kResultsMale : kResultsFemale,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resultText.toUpperCase(),
                    style:
                        (maleSelected == true) ? kResultsMale : kResultsFemale,
                  ),
                  Text(
                    result,
                    style:
                        (maleSelected == true) ? kResultsMale : kResultsFemale,
                  ),
                  Text(
                    description,
                    textAlign: TextAlign.center,
                    style:
                        (maleSelected == true) ? kResultsMale : kResultsFemale,
                  ),
                ],
              ),
            ),
          ),
          CalcButton(
            text: 'RETURN',
            calculate: () {
              Navigator.pop(context);
            },
            maleSelected: maleSelected,
          )
        ],
      ),
    );
  }
}
