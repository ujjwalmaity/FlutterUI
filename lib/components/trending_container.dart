import 'package:FlutterUI/utilities/constants.dart';
import 'package:flutter/material.dart';

class TrendingContainer extends StatelessWidget {
  final String image;
  final String title;

  TrendingContainer({this.image, this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
          child: Container(
            width: 120.0,
            margin: EdgeInsets.all(5.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Container(
          width: 120.0,
          child: Text(
            title,
            style: kTitleTextStyle2,
          ),
        )
      ],
    );
  }
}
