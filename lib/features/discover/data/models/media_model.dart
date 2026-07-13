class MediaModel {
  final int id;
  final String title;
  final String posterPath;
  final String backdropPath;
  final double voteAverage;
  final String mediaType;

  MediaModel({
    required this.id,
    required this.title,
    required this.posterPath,
    required this.backdropPath,
    required this.voteAverage,
    required this.mediaType,
  });

  factory MediaModel.fromJson(Map<String, dynamic> json) {
    return MediaModel(
      id: json['id'],
      title: json['title'] ?? json['name'] ?? '',
      posterPath: json['poster_path'] ?? '',
      backdropPath: json['backdrop_path'] ?? '',
      voteAverage: (json['vote_average'] ?? 0).toDouble(),
      mediaType: json['media_type'] ?? '',
    );
  }

  String get poster => "https://image.tmdb.org/t/p/w500$posterPath";

  String get backdrop => "https://image.tmdb.org/t/p/original$backdropPath";
}
