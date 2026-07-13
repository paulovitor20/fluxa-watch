import '../models/media_model.dart';
import '../services/tmdb_service.dart';

class DiscoverRepository {
  final TmdbService _service = TmdbService();

  Future<List<MediaModel>> getTrendingMovies() async {
    return await _service.getTrendingMovies();
  }

  Future<List<MediaModel>> getTrendingTv() async {
    return await _service.getTrendingTv();
  }

  Future<List<MediaModel>> getTrendingAnime() async {
    return await _service.getTrendingAnime();
  }

  Future<List<MediaModel>> search(String query) async {
    return await _service.search(query);
  }
}
