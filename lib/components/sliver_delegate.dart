import 'package:FlutterUI/utilities/constants.dart';
import 'package:flutter/material.dart';

class Delegate extends SliverPersistentHeaderDelegate {
  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      height: 60.0,
      color: Color(0xFF181008),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text('Videos', style: kTitleTextStyle3),
          Text('About', style: kTitleTextStyle2),
          Text('Prizes', style: kTitleTextStyle2),
        ],
      ),
    );
  }

  @override
  double get maxExtent => 60.0;

  @override
  double get minExtent => 60.0;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
