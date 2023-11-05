import 'package:flutter/material.dart';

class TravelUI extends StatelessWidget {
  const TravelUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  'https://unsplash.com/photos/flat-ray-photography-of-book-pencil-camera-and-with-lens-3OiYMgDKJ6k'),
              fit: BoxFit.cover)),
    ));
  }
}
