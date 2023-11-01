import 'package:flutter/material.dart';

class TravelDiscover extends StatefulWidget {
  const TravelDiscover({super.key});

  @override
  State<TravelDiscover> createState() => _TravelDiscoverState();
}

class _TravelDiscoverState extends State<TravelDiscover> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 60.0, vertical: 30),
        child: Column(
          children: [
            Text(
              'Discover',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
            ),
            Text(
                'One\'s destination is never a place, but \nalways a new way of seeing things.')
          ],
        ),
      ),
    ));
  }
}
