import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'package:fluxa_watch/core/core.dart';
import 'package:fluxa_watch/shared/shared.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  String greeting() {
    final hour = DateTime.now().hour;

    if (hour < 12) return "Bom dia";
    if (hour < 18) return "Boa tarde";
    return "Boa noite";
  }

  @override
  Widget build(BuildContext context) {
    final user = Supabase.instance.client.auth.currentUser;

    final email = user?.email ?? "";

    final name = email.split("@").first;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Expanded(
              child: Text(
                "FLUXA WATCH",
                style: TextStyle(
                  color: AppColors.primary,
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                ),
              ),
            ),

            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications_none_rounded,
                color: Colors.white,
              ),
            ),

            CircleAvatar(
              radius: 22,
              backgroundColor: AppColors.primary,
              child: Text(
                name.substring(0, 1).toUpperCase(),
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),

        const SizedBox(height: 24),

        Text(
          "${greeting()}, $name 👋",
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 34,
          ),
        ),

        const SizedBox(height: 6),

        const Text(
          "Pronto para maratonar algo incrível?",
          style: TextStyle(color: Colors.white70, fontSize: 18),
        ),
      ],
    );
  }
}
