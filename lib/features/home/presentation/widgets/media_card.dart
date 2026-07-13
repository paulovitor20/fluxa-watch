import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:fluxa_watch/core/core.dart';

class MediaCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;
  final double progress;
  final VoidCallback? onTap;

  const MediaCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.subtitle,
    required this.progress,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 165,
      child: InkWell(
        borderRadius: BorderRadius.circular(18),
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: const Color(0xff171717),
            borderRadius: BorderRadius.circular(18),
            border: Border.all(color: Colors.white10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(18),
                ),
                child: AspectRatio(
                  aspectRatio: 0.72,
                  child: CachedNetworkImage(
                    imageUrl: imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    LinearProgressIndicator(
                      value: progress,
                      minHeight: 4,
                      borderRadius: BorderRadius.circular(50),
                      backgroundColor: Colors.white12,
                      color: AppColors.primary,
                    ),

                    const SizedBox(height: 12),

                    Text(
                      title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),

                    const SizedBox(height: 4),

                    Text(
                      subtitle,
                      style: const TextStyle(
                        color: Colors.white60,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
