import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final splashProvider = Provider((ref) => SplashProvider());

class SplashProvider {
  Future<void> initialize(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 2));

    if (context.mounted) {
      context.go('/login');
    }
  }
}
