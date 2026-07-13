import 'package:fluxa_watch/features/discover/data/models/media_model.dart';
import 'package:fluxa_watch/features/discover/data/services/tmdb_service.dart';

class HomeRepository {
  final TmdbService _tmdb = TmdbService();

  Future<List<MediaModel>> getContinueWatching() async {
    // Temporariamente usamos filmes em alta.
    return await _tmdb.getTrendingMovies();
  }

  Future<List<MediaModel>> getRecommendations() async {
    // Temporariamente usamos séries em alta.
    return await _tmdb.getTrendingTv();
  }
}
