import 'package:flutter/material.dart';

import 'app_router.dart';
import 'app_theme.dart';

class FluxaWatchApp extends StatelessWidget {
  const FluxaWatchApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'FLUXA Watch',
      debugShowCheckedModeBanner: false,

      theme: AppTheme.dark,

      routerConfig: AppRouter.router,
    );
  }
}
