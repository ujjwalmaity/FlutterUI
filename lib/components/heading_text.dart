import 'package:FlutterUI/utilities/constants.dart';
import 'package:flutter/material.dart';

class HeadingText extends StatelessWidget {
  final String text;

  HeadingText({@required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5.0),
      child: Text(
        text,
        style: kHeadingTextStyle,
      ),
    );
  }
}
