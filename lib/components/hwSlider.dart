import 'package:bmicalc/constants.dart';
import 'package:flutter/material.dart';

class HWSlider extends StatelessWidget {
  final Function setValue;
  final dynamic icon;
  final int value;
  final int min;
  final bool maleSelected;
  final int max;
  HWSlider({
    this.setValue,
    this.icon,
    this.value,
    this.max,
    this.min,
    this.maleSelected,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20, bottom: 0),
      child: Row(
        children: [
          Icon(
            icon,
            size: 50,
          ),
          SizedBox(
            width: 30,
          ),
          Text(
            value.toString(),
            style: kHWStyle,
          ),
          Expanded(
            child: SliderTheme(
              data: SliderTheme.of(context).copyWith(
                inactiveTrackColor: Color(0xFF8D8E98),
                activeTrackColor: (maleSelected == true) ? blue : red,
                thumbColor: (maleSelected == true) ? darkBlue : darkRed,
                overlayColor: (maleSelected == true) ? blue : red,
                thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
              ),
              child: Slider(
                value: value.toDouble(),
                min: min.toDouble(),
                max: max.toDouble(),
                onChanged: setValue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
