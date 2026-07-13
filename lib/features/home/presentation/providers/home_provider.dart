import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../discover/data/models/media_model.dart';
import '../../../discover/data/repositories/discover_repository.dart';

final homeProvider = FutureProvider<List<MediaModel>>((ref) async {
  return DiscoverRepository().getTrending();
});
