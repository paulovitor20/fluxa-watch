import 'package:flutter/material.dart';

import 'package:fluxa_watch/shared/shared.dart';

import '../widgets/continue_watching_section.dart';
import '../widgets/home_header.dart';
import '../widgets/recommendation_section.dart';
import '../widgets/statistics_section.dart';
import '../widgets/upcoming_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return FwScaffold(
      showAppBar: false,
      safeArea: true,
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            HomeHeader(),

            SizedBox(height: 18),

            ContinueWatchingSection(),

            SizedBox(height: 18),

            UpcomingSection(),

            SizedBox(height: 18),

            StatisticsSection(),

            SizedBox(height: 18),

            RecommendationSection(),

            SizedBox(height: 18),
          ],
        ),
      ),
    );
  }
}
