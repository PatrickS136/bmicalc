import 'package:flutter/material.dart';

class HWSlider extends StatelessWidget {
  final Function setValue;
  final dynamic icon;
  final int value;
  final int min;
  final int max;
  HWSlider({this.setValue, this.icon, this.value, this.max, this.min});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon),
        SizedBox(
          width: 30,
        ),
        Text(
          value.toString(),
        ),
        Slider(
          value: value.toDouble(),
          min: min.toDouble(),
          max: max.toDouble(),
          onChanged: setValue,
        ),
      ],
    );
  }
}
