import 'package:flutter/material.dart';

class GenderButton extends StatelessWidget {
  final dynamic genderIcon;
  final String text;
  final Color color;
  GenderButton({this.color, this.genderIcon, this.text});
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: color,
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      ),
      onPressed: null,
      child: Column(
        children: [
          Icon(
            genderIcon,
            size: 40,
          ),
          Text(text),
        ],
      ),
    );
  }
}
