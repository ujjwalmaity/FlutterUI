import 'package:FlutterUI/components/featured_container.dart';
import 'package:FlutterUI/components/sliver_delegate.dart';
import 'package:FlutterUI/utilities/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  static const String id = 'details_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        scrollDirection: Axis.vertical,
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            expandedHeight: 320.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Singing Stars'),
              background: Image.asset('images/image1.jpg', fit: BoxFit.cover),
            ),
          ),
          SliverPersistentHeader(
            pinned: true,
            delegate: Delegate(),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                SizedBox(height: 40.0),
                Padding(padding: const EdgeInsets.all(5.0), child: Text('Ep 1: Introduction', style: kTitleTextStyle2)),
                FeaturedContainer(image1: 'images/image3.jpg', image2: 'images/image4.jpg'),
                SizedBox(height: 40.0),
                Padding(padding: const EdgeInsets.all(5.0), child: Text('Ep 2: Freestyle dance', style: kTitleTextStyle2)),
                FeaturedContainer(image1: 'images/image1.jpg', image2: 'images/image2.jpg'),
                SizedBox(height: 40.0),
                Padding(padding: const EdgeInsets.all(5.0), child: Text('Ep 3: Old songs', style: kTitleTextStyle2)),
                FeaturedContainer(image1: 'images/image3.jpg', image2: 'images/image4.jpg'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
