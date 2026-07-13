import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../models/media_model.dart';

class TmdbService {
  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: 'https://api.themoviedb.org/3',
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
    ),
  );

  String get _apiKey => dotenv.env['TMDB_API_KEY']!;

  Future<List<MediaModel>> getTrendingMovies() async {
    final response = await _dio.get(
      '/trending/movie/week',
      queryParameters: {'api_key': _apiKey, 'language': 'pt-BR'},
    );

    return (response.data['results'] as List)
        .map((e) => MediaModel.fromJson(e))
        .toList();
  }

  Future<List<MediaModel>> getTrendingTv() async {
    final response = await _dio.get(
      '/trending/tv/week',
      queryParameters: {'api_key': _apiKey, 'language': 'pt-BR'},
    );

    return (response.data['results'] as List)
        .map((e) => MediaModel.fromJson(e))
        .toList();
  }

  Future<List<MediaModel>> getTrendingAnime() async {
    final response = await _dio.get(
      '/discover/tv',
      queryParameters: {
        'api_key': _apiKey,
        'language': 'pt-BR',
        'with_genres': 16,
        'sort_by': 'popularity.desc',
      },
    );

    return (response.data['results'] as List)
        .map((e) => MediaModel.fromJson(e))
        .toList();
  }
}
