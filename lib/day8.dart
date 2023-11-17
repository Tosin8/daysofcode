import 'package:flutter/material.dart';
import 'package:parallax/parallax.dart';

class day8 extends StatefulWidget {
  const day8({super.key});

  @override
  State<day8> createState() => _day8State();
}

class _day8State extends State<day8> {
  final List<String> listOfImages = [
    'assets/travel_ui/1.jpg',
    'assets/travel_ui/sydney/main.jpg',
    'assets/travel_ui/rio.jpg',
    'assets/travel_ui/tokyo.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Parallax'),
        centerTitle: true,
      ),
      body: Container(
          child: Parallax(
        parallaxImages: listOfImages,
        // skewAlpha: 3.0,
        // skewBeta: 7.0,
        height: 300.0,
        width: 500.0,
        paddingHorizontal: 10.0,
        viewportFraction: 0.8,
        circularBorder: true,
      )),
    );
  }
}
