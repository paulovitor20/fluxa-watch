import 'package:fluxa_watch/features/discover/data/models/media_model.dart';
import 'package:fluxa_watch/features/discover/data/services/tmdb_service.dart';

class HomeRepository {
  final TmdbService _tmdb = TmdbService();

  Future<List<MediaModel>> getContinueWatching() async {
    return await _tmdb.getTrending();
  }

  Future<List<MediaModel>> getRecommendations() async {
    return await _tmdb.getTrending();
  }
}
