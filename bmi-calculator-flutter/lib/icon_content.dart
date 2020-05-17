import 'package:bmi_calculator/constants.dart';
import 'package:flutter/cupertino.dart';

class IconContent extends StatelessWidget {
  IconContent({@required this.iconData, @required this.text});

  static const iconSize = 75.0;
  static const fontSize = 14.0;
  static const height = 15.0;
  static const color = Color(0xFF8D8E98);

  final IconData iconData;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Icon(
          iconData,
          size: iconSize,
        ),
        SizedBox(
          height: height,
        ),
        Text(
          text,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
