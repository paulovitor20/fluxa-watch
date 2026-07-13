import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/home_provider.dart';
import 'media_card.dart';
import 'section_title.dart';

class RecommendationSection extends ConsumerWidget {
  const RecommendationSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final recommendations = ref.watch(recommendationsProvider);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionTitle(
          title: "Recomendado para você",
          actionText: "Ver todos",
        ),

        const SizedBox(height: 18),

        recommendations.when(
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
                  final movie = list[index];

                  return MediaCard(
                    imageUrl: movie.poster,
                    title: movie.title,
                    subtitle: movie.mediaType.toUpperCase(),
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
