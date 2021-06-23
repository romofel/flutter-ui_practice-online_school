class Teacher {
  final String name;
  final String title;
  final String badge;
  final String image;
  final double? start;
  final double? end;

  const Teacher({
    required this.name,
    required this.title,
    required this.badge,
    required this.image,
    this.start,
    this.end,
  });
}
