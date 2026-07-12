import 'package:flutter/material.dart';
import 'package:fluxa_watch/shared/components/fw_app_bar.dart';
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
  });

  @override
  Widget build(BuildContext context) {
    Widget content = padding != null
        ? Padding(padding: padding!, child: body)
        : body;

    if (safeArea) {
      content = SafeArea(child: content);
    }

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: showAppBar && title != null
          ? FwAppBar(title: title!, actions: actions)
          : null,
      body: content,
      bottomNavigationBar: bottomNavigationBar,
      floatingActionButton: floatingActionButton,
    );
  }
}
