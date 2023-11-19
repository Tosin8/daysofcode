// ignore_for_file: public_member_api_docs, sort_constructors_first
class Movie {
  final String movieName;
  final String imageUrl;
  final int stars;
  final List<String> genres;
  final List<Actor> cast;
  final double rating;
  final String director;
  final String description;
  Movie({
    required this.movieName,
    required this.imageUrl,
    required this.stars,
    required this.genres,
    required this.cast,
    required this.rating,
    required this.director,
    required this.description,
  });
}

class Actor {
  final String name;
  final String imageUrl;

  Actor({required this.name, required this.imageUrl});
}
