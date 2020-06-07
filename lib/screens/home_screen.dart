import 'package:FlutterUI/animations/FadeAnimation.dart';
import 'package:FlutterUI/components/featured_container.dart';
import 'package:FlutterUI/components/heading_text.dart';
import 'package:FlutterUI/components/live_container.dart';
import 'package:FlutterUI/components/nav_icon.dart';
import 'package:FlutterUI/components/shows_container.dart';
import 'package:FlutterUI/components/trending_container.dart';
import 'package:FlutterUI/screens/details_screen.dart';
import 'package:FlutterUI/utilities/constants.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String id = 'home_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Expanded(
              child: ListView(
                scrollDirection: Axis.vertical,
                children: <Widget>[
                  SizedBox(height: 10.0),
                  Container(
                    margin: EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: TextField(
                      decoration: kTextFieldInputDecoration,
                    ),
                  ),
                  SizedBox(height: 30.0),
                  HeadingText(text: 'Shows for you'),
                  FadeAnimation(
                      1,
                      Container(
                        height: 280.0,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, DetailsScreen.id);
                              },
                              child: ShowsContainer(
                                image: 'images/image1.jpg',
                                title1: 'Singing Stars',
                                title2: 'Season 1',
                              ),
                            ),
                            ShowsContainer(
                              image: 'images/image2.jpg',
                              title1: 'Rising Stars',
                              title2: 'Season 2',
                            ),
                            ShowsContainer(
                              image: 'images/image3.jpg',
                              title1: 'Battle of Queens',
                              title2: 'Season 3',
                            ),
                          ],
                        ),
                      )),
                  SizedBox(height: 30.0),
                  HeadingText(text: 'Trending right now'),
                  FadeAnimation(
                      1,
                      Container(
                        height: 160,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            TrendingContainer(
                              image: 'images/image1.jpg',
                              title: 'Hip-hop king',
                            ),
                            TrendingContainer(
                              image: 'images/image2.jpg',
                              title: 'Remix battle',
                            ),
                            TrendingContainer(
                              image: 'images/image3.jpg',
                              title: 'Top of the day',
                            ),
                            TrendingContainer(
                              image: 'images/image1.jpg',
                              title: 'Hip-hop king',
                            ),
                            TrendingContainer(
                              image: 'images/image2.jpg',
                              title: 'Remix battle',
                            ),
                            TrendingContainer(
                              image: 'images/image3.jpg',
                              title: 'Top of the day',
                            ),
                          ],
                        ),
                      )),
                  SizedBox(height: 30.0),
                  HeadingText(text: 'Live team battles'),
                  FadeAnimation(1, LiveContainer(image: 'images/image2.jpg', title: 'Rising Stars S1')),
                  FadeAnimation(1, LiveContainer(image: 'images/image4.jpg', title: 'Dance Heroes S8')),
                  SizedBox(height: 30.0),
                  HeadingText(text: 'Featured performances'),
                  FadeAnimation(1, FeaturedContainer(image1: 'images/image1.jpg', image2: 'images/image2.jpg')),
                  FadeAnimation(1, FeaturedContainer(image1: 'images/image3.jpg', image2: 'images/image4.jpg')),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 60.0,
                color: Colors.black45,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    NavIcon(icon: Icons.home, color: Colors.white),
                    NavIcon(icon: Icons.add_circle),
                    NavIcon(icon: Icons.favorite),
                    NavIcon(icon: Icons.person),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
