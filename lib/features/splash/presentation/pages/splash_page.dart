import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:fluxa_watch/shared/shared.dart';

import '../providers/splash_provider.dart';

class SplashPage extends ConsumerStatefulWidget {
  const SplashPage({super.key});

  @override
  ConsumerState<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends ConsumerState<SplashPage> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(splashProvider).initialize(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return const FwScaffold(
      showAppBar: false,
      safeArea: false,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.local_movies_rounded, size: 90, color: Colors.orange),
            SizedBox(height: 24),
            FwText.display("FLUXA"),
            FwText.subtitle("Watch"),
            SizedBox(height: 40),
            FwLoading(),
          ],
        ),
      ),
    );
  }
}
