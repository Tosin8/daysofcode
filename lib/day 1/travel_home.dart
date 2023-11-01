import 'package:flutter/material.dart';

class TravelHome extends StatelessWidget {
  const TravelHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/travel_ui/1.jpg'),
          fit: BoxFit.fill,
        ),
      ),
      child: Container(
          decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xff635050), Color(0x00251e1e)],
          begin: Alignment(0.00, -1.00),
          end: Alignment(0, 1),
        ),
      )),
    ));
  }
}
