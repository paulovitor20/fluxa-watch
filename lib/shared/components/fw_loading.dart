import 'package:flutter/material.dart';

import 'package:fluxa_watch/core/core.dart';

class FwLoading extends StatelessWidget {
  final double size;

  const FwLoading({super.key, this.size = 26});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: CircularProgressIndicator(
        strokeWidth: 2.5,
        color: AppColors.primary,
      ),
    );
  }
}
