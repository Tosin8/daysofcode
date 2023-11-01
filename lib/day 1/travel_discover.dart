import 'package:flutter/material.dart';
import 'package:vertical_card_pager/vertical_card_pager.dart';

class TravelDiscover extends StatefulWidget {
  const TravelDiscover({super.key});

  @override
  State<TravelDiscover> createState() => _TravelDiscoverState();
}

final List<String> titles = [
  'SYDNEY',
  'RIO',
  'CARIO',
  'TOKYO',
  'BAHAMAS',
  'ROME',
];

final List<Widget> images = [
  Hero(
    tag: 'SYDNEY',
    child: ClipRRect(
      borderRadius: BorderRadius.circular(30.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: const DecorationImage(
              image: AssetImage(
                'assets/travel_ui/sydney/main.jpg',
              ),
              fit: BoxFit.cover),
        ),
        child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Color(0xff242121),
            Color(0x005b5252),
          ], begin: Alignment(0.01, -1.00), end: Alignment(-0.01, 1))),
        ),
      ),
    ),
  ),
  ClipRRect(
    borderRadius: BorderRadius.circular(30.0),
    child: Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              'assets/travel_ui/rio.jpg',
            ),
            fit: BoxFit.cover),
      ),
      child: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Color(0xff242121),
          Color(0x005b5252),
        ], begin: Alignment(0.01, -1.00), end: Alignment(-0.01, 1))),
      ),
    ),
  ),
  ClipRRect(
    borderRadius: BorderRadius.circular(30.0),
    child: Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              'assets/travel_ui/cario.png',
            ),
            fit: BoxFit.cover),
      ),
      child: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Color(0xff242121),
          Color(0x005b5252),
        ], begin: Alignment(0.01, -1.00), end: Alignment(-0.01, 1))),
      ),
    ),
  ),
  ClipRRect(
    borderRadius: BorderRadius.circular(30.0),
    child: Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              'assets/travel_ui/tokyo.jpg',
            ),
            fit: BoxFit.cover),
      ),
      child: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Color(0xff242121),
          Color(0x005b5252),
        ], begin: Alignment(0.01, -1.00), end: Alignment(-0.01, 1))),
      ),
    ),
  ),
  ClipRRect(
    borderRadius: BorderRadius.circular(30.0),
    child: Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              'assets/travel_ui/bahamas.jpg',
            ),
            fit: BoxFit.cover),
      ),
      child: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Color(0xff242121),
          Color(0x005b5252),
        ], begin: Alignment(0.01, -1.00), end: Alignment(-0.01, 1))),
      ),
    ),
  ),
  ClipRRect(
    borderRadius: BorderRadius.circular(30.0),
    child: Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              'assets/travel_ui/rome.jpg',
            ),
            fit: BoxFit.cover),
      ),
      child: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Color(0xff242121),
          Color(0x005b5252),
        ], begin: Alignment(0.01, -1.00), end: Alignment(-0.01, 1))),
      ),
    ),
  ),
];

class _TravelDiscoverState extends State<TravelDiscover> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 60.0, vertical: 30),
        child: Column(
          children: [
            const Text(
              'Discover',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
            ),
            const Text(
                'One\'s destination is never a place, but \n   always a new way of seeing things.'),
            Expanded(
                child: Container(
              padding: const EdgeInsets.all(10.0),
              child: VerticalCardPager(
                textStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Inter',
                ),
                titles: titles,
                images: images,
                onPageChanged: (page) {},
                onSelectedItem: (index) {},
              ),
            ))
          ],
        ),
      ),
    ));
  }
}
