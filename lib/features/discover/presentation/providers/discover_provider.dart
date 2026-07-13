import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/models/media_model.dart';
import '../../data/repositories/discover_repository.dart';

final discoverRepositoryProvider = Provider<DiscoverRepository>((ref) {
  return DiscoverRepository();
});

final trendingProvider = FutureProvider<List<MediaModel>>((ref) async {
  return ref.read(discoverRepositoryProvider).getTrending();
});
