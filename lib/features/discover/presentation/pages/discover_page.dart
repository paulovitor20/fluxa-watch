import 'package:flutter/material.dart';

import 'package:fluxa_watch/shared/shared.dart';

import '../widgets/discover_header.dart';
import '../widgets/search_bar_widget.dart';
import '../widgets/trending_section.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({super.key});

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
            DiscoverHeader(),

            SizedBox(height: 18),

            SearchBarWidget(),

            SizedBox(height: 24),

            TrendingSection(),
          ],
        ),
      ),
    );
  }
}
