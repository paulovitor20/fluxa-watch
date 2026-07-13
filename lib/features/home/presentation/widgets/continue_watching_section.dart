import 'package:flutter/material.dart';

import 'media_card.dart';
import 'section_title.dart';

class ContinueWatchingSection extends StatelessWidget {
  const ContinueWatchingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionTitle(title: "Continuar assistindo"),

        const SizedBox(height: 18),

        SizedBox(
          height: 315,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: 4,
            separatorBuilder: (_, __) => const SizedBox(width: 16),
            itemBuilder: (_, index) {
              return const MediaCard(
                imageUrl:
                    "https://image.tmdb.org/t/p/w500/qJ2tW6WMUDux911r6m7haRef0WH.jpg",
                title: "The Dark Knight",
                subtitle: "Film",
                progress: .72,
              );
            },
          ),
        ),
      ],
    );
  }
}
