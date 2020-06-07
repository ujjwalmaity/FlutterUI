import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  static const String id = 'details_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Text('Hello World!'),
      ),
    );
  }
}
