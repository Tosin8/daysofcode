import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import 'splash.dart';

class Shop extends StatelessWidget {
  const Shop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 500,
            width: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      'assets/ecommerce/1.jpg',
                    ),
                    fit: BoxFit.cover)),
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                Colors.black.withOpacity(0.5),
                Colors.black.withOpacity(.2)
              ], begin: Alignment.bottomRight)),
              child: Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  PageTransition(
                                      child: const day19(),
                                      type: PageTransitionType.fade));
                            },
                            icon: const Icon(Icons.arrow_back_ios,
                                color: Colors.white)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.favorite,
                                    color: Colors.white)),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.shopping_bag,
                                    color: Colors.white)),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
