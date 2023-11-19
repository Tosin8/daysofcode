import 'package:flutter/material.dart';

import '../model/movie.dart';

class MovieCardWidget extends StatelessWidget {
  final Movie movie;
  const MovieCardWidget({super.key, required this.movie});

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          child: Column(
            children: [
              Expanded(child: buildImage(movie: movie)),
              const SizedBox(height: 4),
              Text(
                movie.movieName,
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const SizedBox(height: 4),
              buildGenre(movie: movie),
              const SizedBox(height: 4),
              buildRating(movie: movie),
              Text(
                '...',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      );
}
