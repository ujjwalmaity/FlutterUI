import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  static const String id = 'details_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
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
            SliverList(
              delegate: SliverChildListDelegate(
                List.generate(
                  30,
                  (int index) => ListTile(title: Text("Item $index")),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
