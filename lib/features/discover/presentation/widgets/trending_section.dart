import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/discover_provider.dart';
import '../../../home/presentation/widgets/media_card.dart';

class TrendingSection extends ConsumerWidget {
  const TrendingSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final trending = ref.watch(trendingProvider);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Em alta",
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),

        const SizedBox(height: 16),

        trending.when(
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
