import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/repositories/auth_repository.dart';

final loginProvider = Provider((ref) => LoginProvider());

class LoginProvider {
  final repository = AuthRepository();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  Future<void> login() async {
    await repository.signIn(
      emailController.text.trim(),
      passwordController.text,
    );
  }

  void dispose() {
    emailController.dispose();
    passwordController.dispose();
  }
}
