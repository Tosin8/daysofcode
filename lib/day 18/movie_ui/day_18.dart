import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'data/movies.dart';
import 'widgets/bkg.dart';
import 'widgets/buy_button.dart';
import 'widgets/movie_card.dart';

class day18 extends StatelessWidget {
  final controller = PageController();

  day18({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: const Icon(Icons.close),
          actions: const [Icon(Icons.person_outline), SizedBox(width: 15)],
        ),
        body: Stack(
          children: [
            BkgWidget(controller: controller),
            Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CarouselSlider(
                    items:
                        movies.map((e) => MovieCardWidget(movie: e)).toList(),
                    options: CarouselOptions(
                      enableInfiniteScroll: false,
                      viewportFraction: 0.75,
                      height: MediaQuery.of(context).size.height * 0.7,
                      enlargeCenterPage: true,
                      onPageChanged: (index, _) => controller.animateToPage(
                        index,
                        duration: const Duration(seconds: 1),
                        curve: Curves.ease,
                      ),
                    ),
                  ),
                  const BuyBtnWidget(),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      );
}
