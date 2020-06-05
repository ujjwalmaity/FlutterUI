import 'package:flutter/material.dart';

const kHeadingTextStyle = TextStyle(
  fontSize: 20.0,
  fontWeight: FontWeight.bold,
  fontFamily: 'Spartan MB',
);

const kTitleTextStyle1 = TextStyle(
  fontSize: 22.0,
  fontFamily: 'Spartan MB',
);

const kTitleTextStyle2 = TextStyle(
  fontFamily: 'Spartan MB',
  color: Colors.white70,
);

const kTitleTextStyle3 = TextStyle(
  fontFamily: 'Spartan MB',
  color: Colors.white,
);

final kTextFieldInputDecoration = InputDecoration(
  //filled: true,
  fillColor: Colors.grey.withOpacity(0.5),
  hintText: 'Search',
  hintStyle: TextStyle(
    color: Colors.grey,
  ),
  prefixIcon: Icon(
    Icons.search,
    color: Colors.grey,
  ),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(10.0),
    ),
    //borderSide: BorderSide.none,
  ),
);
