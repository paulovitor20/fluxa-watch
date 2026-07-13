import 'package:flutter/material.dart';

import 'media_card.dart';
import 'section_title.dart';

class RecommendationSection extends StatelessWidget {
  const RecommendationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionTitle(
          title: "Recomendado para você",
          actionText: "Ver todos",
        ),

        const SizedBox(height: 18),

        SizedBox(
          height: 225,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            separatorBuilder: (_, __) => const SizedBox(width: 10),
            itemBuilder: (_, __) {
              return const MediaCard(
                imageUrl:
                    "https://image.tmdb.org/t/p/w500/8cdWjvZQUExUUTzyp4t6EDMubfO.jpg",
                title: "Interstellar",
                subtitle: "Filme",
                progress: 0,
              );
            },
          ),
        ),
      ],
    );
  }
}
