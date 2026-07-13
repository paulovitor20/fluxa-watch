import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/repositories/home_repository.dart';
import '../../../discover/data/models/media_model.dart';

final homeRepositoryProvider = Provider<HomeRepository>((ref) {
  return HomeRepository();
});

final continueWatchingProvider = FutureProvider<List<MediaModel>>((ref) async {
  return ref.read(homeRepositoryProvider).getContinueWatching();
});

final recommendationsProvider = FutureProvider<List<MediaModel>>((ref) async {
  return ref.read(homeRepositoryProvider).getRecommendations();
});
