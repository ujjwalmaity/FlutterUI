import 'package:FlutterUI/utilities/constants.dart';
import 'package:flutter/material.dart';

class LiveContainer extends StatelessWidget {
  final String image;
  final String title;

  LiveContainer({this.image, this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
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
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              title,
              style: kTitleTextStyle3,
            ),
          ],
        ),
      ),
    );
  }
}
