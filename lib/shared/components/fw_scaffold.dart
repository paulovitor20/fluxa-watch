import 'package:flutter/material.dart';

import 'package:fluxa_watch/core/core.dart';

class FwScaffold extends StatelessWidget {
  final Widget body;
  final String? title;
  final bool showAppBar;
  final bool safeArea;
  final List<Widget>? actions;
  final Widget? bottomNavigationBar;
  final Widget? floatingActionButton;
  final EdgeInsetsGeometry? padding;
  final Color? backgroundColor;

  const FwScaffold({
    super.key,
    required this.body,
    this.title,
    this.showAppBar = true,
    this.safeArea = true,
    this.actions,
    this.bottomNavigationBar,
    this.floatingActionButton,
    this.padding,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    Widget content = body;

    if (padding != null) {
      content = Padding(padding: padding!, child: content);
    }

    if (safeArea) {
      content = SafeArea(child: content);
    }

    return Scaffold(
      backgroundColor: backgroundColor ?? AppColors.background,

      appBar: showAppBar
          ? AppBar(
              title: title != null ? Text(title!) : null,
              backgroundColor: backgroundColor ?? AppColors.background,
              elevation: 0,
              actions: actions,
            )
          : null,

      body: content,

      bottomNavigationBar: bottomNavigationBar,

      floatingActionButton: floatingActionButton,
    );
  }
}
