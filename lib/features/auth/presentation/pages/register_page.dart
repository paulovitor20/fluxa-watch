import 'package:flutter/material.dart';
import 'package:fluxa_watch/shared/shared.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const FwScaffold(
      title: "Criar conta",
      body: Center(child: FwText.title("Cadastro")),
    );
  }
}
