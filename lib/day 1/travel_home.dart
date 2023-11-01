import 'package:flutter/material.dart';

class TravelHome extends StatelessWidget {
  const TravelHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
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
            ),
          ),
        ),
        const Positioned(
          left: 26,
          top: 67,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Explore.',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1),
              ),
              Text(
                'Travel.',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1),
              ),
              Text(
                'Inspire.',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1),
              ),
              SizedBox(height: 20),
              Text(
                'Life is all about journey, \nfind yours.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          left: 71,
          top: 670,
          child: GestureDetector(
            onTap: () {},
            child: Container(
              width: 242,
              height: 60,
              decoration: BoxDecoration(
                color: const Color(0xff42915d),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Get Started',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  SizedBox(width: 5),
                  Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
        )
      ]),
    );
  }
}
