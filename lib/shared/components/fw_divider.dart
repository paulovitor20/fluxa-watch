import 'package:flutter/material.dart';

import 'package:fluxa_watch/core/core.dart';

class FwDivider extends StatelessWidget {
  final double height;

  const FwDivider({super.key, this.height = 1});

  @override
  Widget build(BuildContext context) {
    return Container(height: height, color: AppColors.border);
  }
}
