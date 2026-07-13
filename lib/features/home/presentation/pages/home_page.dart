import 'package:flutter/material.dart';

import 'package:fluxa_watch/core/core.dart';
import 'package:fluxa_watch/shared/shared.dart';

import '../widgets/continue_watching_section.dart';
import '../widgets/home_header.dart';
import '../widgets/statistics_section.dart';
import '../widgets/upcoming_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const FwScaffold(
      showAppBar: false,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(AppSpacing.lg),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HomeHeader(),

            SizedBox(height: 34),

            ContinueWatchingSection(),

            SizedBox(height: 34),

            UpcomingSection(),

            SizedBox(height: 34),

            StatisticsSection(),

            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
