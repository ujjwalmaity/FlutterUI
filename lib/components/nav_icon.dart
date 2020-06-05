import 'package:flutter/material.dart';

class NavIcon extends StatelessWidget {
  final IconData icon;
  final Color color;

  NavIcon({@required this.icon, this.color = Colors.grey});

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      color: color,
      size: 40.0,
    );
  }
}
