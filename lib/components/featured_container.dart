import 'package:flutter/material.dart';

class FeaturedContainer extends StatelessWidget {
  final String image1;
  final String image2;

  FeaturedContainer({this.image1, this.image2});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
            height: 200.0,
            margin: EdgeInsets.all(5.0),
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.1),
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                image: AssetImage(image1),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            height: 200.0,
            margin: EdgeInsets.all(5.0),
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.1),
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                image: AssetImage(image2),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
