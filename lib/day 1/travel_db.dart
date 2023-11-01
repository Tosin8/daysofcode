class Travel {
  final String titles;
  final String location;
  final String description;

  const Travel(
      {required this.titles, required this.location, required this.description});
}

final travelMap = {
  'SYDNEY': const Travel(
      titles: 'SYDNEY',
      location: 'Sydyney, Australia',
      description:
          'The Sydney Opera House is an iconic architectural masterpiece and one of the most recognizable landmarks in the wordld. Located in Sydney, Austrial, it is situated on the picturesque Sydney Harbour, near the Sydney Harbour Bridge. ')
};
