import '../models/media_model.dart';
import '../services/tmdb_service.dart';

class DiscoverRepository {
  final TmdbService _service = TmdbService();

  Future<List<MediaModel>> getTrending() async {
    return _service.getTrending();
  }
}
