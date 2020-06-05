import 'package:FlutterUI/utilities/constants.dart';
import 'package:flutter/material.dart';

class ShowsContainer extends StatelessWidget {
  final String image;
  final String title1;
  final String title2;

  ShowsContainer({this.image, this.title1, this.title2});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250.0,
      margin: EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.1),
        borderRadius: BorderRadius.circular(10.0),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              title1,
              style: kTitleTextStyle1,
            ),
            Text(
              title2,
              style: kTitleTextStyle2,
            ),
          ],
        ),
      ),
    );
  }
}
