import 'package:flutter/material.dart';

class GenderButton extends StatelessWidget {
  final dynamic genderIcon;
  final String text;
  final Color color;
  final Function callback;
  GenderButton({this.color, this.genderIcon, this.text, this.callback});
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: color,
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      ),
      onPressed: callback,
      child: Column(
        children: [
          Icon(
            genderIcon,
            size: 40,
            color: Colors.white,
          ),
          Text(
            text,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
