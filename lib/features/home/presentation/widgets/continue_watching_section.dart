import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/home_provider.dart';
import 'media_card.dart';
import 'section_title.dart';

class ContinueWatchingSection extends ConsumerWidget {
  const ContinueWatchingSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final movies = ref.watch(continueWatchingProvider);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionTitle(title: "Continuar assistindo"),

        const SizedBox(height: 18),

        movies.when(
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
                    progress: 0.55,
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
