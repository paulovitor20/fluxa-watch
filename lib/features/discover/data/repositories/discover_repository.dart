import '../services/tmdb_service.dart';

class DiscoverRepository {
  final _service = TmdbService();

  Future getTrending() {
    return _service.trending();
  }
}
