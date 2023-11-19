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
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const SizedBox(height: 4),
              buildGenre(movie: movie),
              const SizedBox(height: 4),
              buildRating(movie: movie),
              const Text(
                '...',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      );
  Widget buildImage({required Movie movie}) => Container(
        margin: const EdgeInsets.symmetric(vertical: 12),
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(25)),
          child: Image.asset(movie.imageUrl, fit: BoxFit.cover),
        ),
      );

  Widget buildGenre({required Movie movie}) => Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: movie.genres
          .map((genre) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(15)),
                padding: EdgeInsets.all(5),
                child: Text(
                  genre,
                  style: TextStyle(color: Colors.grey[600], fontSize: 12),
                ),
              )))
          .toList());
}
