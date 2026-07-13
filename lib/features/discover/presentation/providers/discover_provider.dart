import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/models/media_model.dart';
import '../../data/repositories/discover_repository.dart';

final discoverRepositoryProvider = Provider<DiscoverRepository>((ref) {
  return DiscoverRepository();
});

final trendingMoviesProvider = FutureProvider<List<MediaModel>>((ref) async {
  return ref.read(discoverRepositoryProvider).getTrendingMovies();
});

final trendingTvProvider = FutureProvider<List<MediaModel>>((ref) async {
  return ref.read(discoverRepositoryProvider).getTrendingTv();
});

final trendingAnimeProvider = FutureProvider<List<MediaModel>>((ref) async {
  return ref.read(discoverRepositoryProvider).getTrendingAnime();
});

final searchProvider = FutureProvider.family<List<MediaModel>, String>((
  ref,
  query,
) async {
  return ref.read(discoverRepositoryProvider).search(query);
});
