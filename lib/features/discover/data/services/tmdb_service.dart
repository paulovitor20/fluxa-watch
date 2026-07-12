import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class TmdbService {
  final Dio _dio = Dio(BaseOptions(baseUrl: 'https://api.themoviedb.org/3'));

  final apiKey = dotenv.env['TMDB_API_KEY'];

  Future<Response> trending() {
    return _dio.get(
      '/trending/all/week',
      queryParameters: {'api_key': apiKey, 'language': 'pt-BR'},
    );
  }
}
