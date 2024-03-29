import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

// ! Routing
int currentIndex = 0;
// ! Routing

List bottomBar = [
  const Icon(
    Ionicons.home_outline,
    color: Colors.white,
  ),
  const Icon(
    Ionicons.compass_outline,
    color: Colors.white,
  ),
  const Icon(
    Ionicons.search_outline,
    color: Colors.white,
  ),
  const Icon(
    Ionicons.bookmark_outline,
    color: Colors.white,
  ),
  const Icon(
    Ionicons.person_outline,
    color: Colors.white,
  ),
];

List data = [
  {"city": 'Makkah', "country": 'Saudia Arabia', "rating": '4.6', 'image': 'assets/images/makkah.jpg'},
  {"city": 'Madinah', "country": 'Saudia Arabia', "rating": '4.6', 'image': 'assets/images/madinah.jpg'},
  {"city": 'Nassau', "country": 'Bahamas', "rating": '4.6', 'image': 'assets/images/nassau.jpg'},
  {"city": 'Mykonos', "country": 'Greece', "rating": '4.8', 'image': 'assets/images/mykonos.jpg'},
  {"city": 'Colosseum', "country": 'Rome', "rating": '4.4', 'image': 'assets/images/rome.jpg'},
  {"city": 'London', "country": 'England', "rating": '4.5', 'image': 'assets/images/london.jpg'},
];
List data_2 = [
  {"name": 'Flaye', 'image': 'assets/images/flaye.png'},
  {"name": 'Beach', 'image': 'assets/images/beach.png'},
  {"name": 'Park', 'image': 'assets/images/park.png'},
  {"name": 'Camp', 'image': 'assets/images/camp.png'},
  {"name": 'Flaye', 'image': 'assets/images/flaye.png'},
  {"name": 'Beach', 'image': 'assets/images/beach.png'},
  {"name": 'Park', 'image': 'assets/images/park.png'},
  {"name": 'Camp', 'image': 'assets/images/camp.png'},
];

final List<String> sliderImage = [
  'assets/images/slider1.png',
  'assets/images/slider2.png',
  'assets/images/slider3.png',
  'assets/images/slider4.png',
];

final categoryList = ['Popular', 'Recommended', 'Most Viewed', 'Most Liked'];

// Colors
const kAvatarColor = Color(0xffffdbc9);
const kPrimaryColor = Color(0xFFEEF7FF);
const kSecondaryColor = Color(0xFF29303D);
const kmainColor = Color(0xFF99c5e7);
const kmainDarkColor = Color(0xFF699fc9);
const kGradeColor = Color(0xFF73c0bc);

// TextStyles
const TextStyle headerTextStyle = TextStyle(
  color: kSecondaryColor,
  fontSize: 24,
  fontFamily: 'Montserrat',
  fontWeight: FontWeight.bold,
);
const TextStyle headingTextStyle1 = TextStyle(
  color: kSecondaryColor,
  fontSize: 18,
  fontFamily: 'Montserrat',
  fontWeight: FontWeight.bold,
);

// BorderRadius
final BorderRadius borderRadiusHigh = BorderRadius.circular(15.0);
final BorderRadius borderRadiusMedium = BorderRadius.circular(10.0);
final BorderRadius borderRadiusLow = BorderRadius.circular(15.0);
