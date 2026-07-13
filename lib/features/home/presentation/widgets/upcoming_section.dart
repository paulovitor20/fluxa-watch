import 'package:flutter/material.dart';

import 'package:fluxa_watch/core/core.dart';

import 'section_title.dart';

class UpcomingSection extends StatelessWidget {
  const UpcomingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionTitle(
          title: "Próximos episódios",
          actionText: "Ver calendário",
        ),

        const SizedBox(height: 18),

        _episode(
          image:
              "https://image.tmdb.org/t/p/w500/z2yahl2uefxDCl0nogcRBstwruJ.jpg",
          title: "House of the Dragon",
          episode: "T2 • E5",
          date: "Hoje",
          streaming: "21:00 • HBO Max",
        ),

        const SizedBox(height: 12),

        _episode(
          image:
              "https://image.tmdb.org/t/p/w500/hFWP5HkbVEe40hrXgtCeQxoccHE.jpg",
          title: "Jujutsu Kaisen",
          episode: "T2 • E18",
          date: "Amanhã",
          streaming: "12:30 • Crunchyroll",
        ),

        const SizedBox(height: 12),

        _episode(
          image:
              "https://image.tmdb.org/t/p/w500/cZ0d3rtvXPVvuiX22sP79K3Hmjz.jpg",
          title: "The Witcher",
          episode: "T4 • E1",
          date: "05/07",
          streaming: "16:00 • Netflix",
        ),
      ],
    );
  }

  Widget _episode({
    required String image,
    required String title,
    required String episode,
    required String date,
    required String streaming,
  }) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: const Color(0xff171717),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              image,
              width: 56,
              height: 56,
              fit: BoxFit.cover,
            ),
          ),

          const SizedBox(width: 14),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 4),

                Text(episode, style: const TextStyle(color: Colors.white60)),
              ],
            ),
          ),

          const SizedBox(width: 12),

          SizedBox(
            width: 78,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  date,
                  style: const TextStyle(
                    color: AppColors.primary,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 4),

                Text(
                  streaming,
                  textAlign: TextAlign.end,
                  style: const TextStyle(color: Colors.white60, fontSize: 12),
                ),

                const SizedBox(height: 8),

                const Icon(
                  Icons.notifications_none_rounded,
                  color: AppColors.primary,
                  size: 22,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
