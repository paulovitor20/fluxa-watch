import 'package:flutter/material.dart';

import 'package:fluxa_watch/core/core.dart';
import 'package:fluxa_watch/shared/shared.dart';

class ShowcasePage extends StatelessWidget {
  const ShowcasePage({super.key});

  @override
  Widget build(BuildContext context) {
    return FwScaffold(
      title: "FW UI Showcase",

      body: ListView(
        padding: const EdgeInsets.all(AppSpacing.lg),
        children: [
          const FwText.display("FW UI"),

          const SizedBox(height: AppSpacing.xl),

          const FwText.title("Buttons"),

          const SizedBox(height: AppSpacing.md),

          FwButton(text: "Entrar", onPressed: () {}),

          const SizedBox(height: AppSpacing.xl),

          const FwText.title("Text"),

          const SizedBox(height: AppSpacing.md),

          const FwText.body("Texto padrão"),

          const FwText.caption("Legenda"),

          const SizedBox(height: AppSpacing.xl),

          const FwText.title("Loading"),

          const SizedBox(height: AppSpacing.md),

          const FwLoading(),
        ],
      ),
    );
  }
}
