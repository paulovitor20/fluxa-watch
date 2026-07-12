import 'package:flutter/material.dart';
import 'package:fluxa_watch/shared/shared.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const FwScaffold(
      title: "Recuperar senha",
      body: Center(child: FwText.title("Recuperar senha")),
    );
  }
}
