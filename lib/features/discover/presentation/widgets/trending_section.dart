import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../home/presentation/widgets/media_card.dart';
import '../providers/discover_provider.dart';

class TrendingSection extends ConsumerWidget {
  const TrendingSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final movies = ref.watch(trendingMoviesProvider);
    final tv = ref.watch(trendingTvProvider);
    final anime = ref.watch(trendingAnimeProvider);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildSection(title: "🎬 Filmes em alta", provider: movies),

        const SizedBox(height: 24),

        _buildSection(title: "📺 Séries em alta", provider: tv),

        const SizedBox(height: 24),

        _buildSection(title: "🎌 Animes", provider: anime),
      ],
    );
  }

  Widget _buildSection({required String title, required AsyncValue provider}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),

        const SizedBox(height: 12),

        provider.when(
          loading: () => const SizedBox(
            height: 225,
            child: Center(child: CircularProgressIndicator()),
          ),

          error: (e, _) => SizedBox(
            height: 225,
            child: Center(
              child: Text(
                e.toString(),
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ),

          data: (list) {
            return SizedBox(
              height: 225,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: list.length,
                separatorBuilder: (_, __) => const SizedBox(width: 10),
                itemBuilder: (_, index) {
                  final media = list[index];

                  return MediaCard(
                    imageUrl: media.poster,
                    title: media.title,
                    subtitle: media.mediaType.toUpperCase(),
                    progress: 0,
                  );
                },
              ),
            );
          },
        ),
      ],
    );
  }
}
