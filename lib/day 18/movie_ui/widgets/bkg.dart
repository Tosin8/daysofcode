import 'package:flutter/material.dart';

import '../data/movies.dart';
import '../model/movie.dart';

class BkgWidget extends StatelessWidget {
  final PageController controller;
  const BkgWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) => PageView.builder(
        reverse: true,
        physics: NeverScrollableScrollPhysics(),
        controller: controller,
        itemBuilder: (context, index) {
          final movie = movies[index];

          return buildBackground(movie: movie);
        },
        itemCount: movies.length,
      );
  Widget buildBackground({required Movie movie}) => Stack(
        children: [
          Container(
              height: double.infinity,
              width: double.infinity,
              child: Image.asset(
                movie.imageUrl,
                fit: BoxFit.cover,
              )),
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.white.withOpacity(0.0001), Colors.white])),
          )
        ],
      );
}
