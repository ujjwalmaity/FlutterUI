import 'package:flutter/material.dart';

class NavIcon extends StatelessWidget {
  final IconData icon;

  NavIcon({@required this.icon});

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      color: Colors.white,
      size: 40.0,
    );
  }
}
