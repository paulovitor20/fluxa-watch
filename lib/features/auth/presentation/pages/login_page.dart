import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:fluxa_watch/core/core.dart';
import 'package:fluxa_watch/shared/shared.dart';
import 'package:go_router/go_router.dart';
import '../providers/login_provider.dart';

class LoginPage extends ConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.read(loginProvider);

    return FwScaffold(
      showAppBar: false,
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 420),
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(AppSpacing.lg),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 40),

                const Icon(
                  Icons.local_movies_rounded,
                  color: AppColors.primary,
                  size: 90,
                ),

                const SizedBox(height: AppSpacing.lg),

                const FwText.display("FLUXA", textAlign: TextAlign.center),

                const FwText.subtitle("Watch", textAlign: TextAlign.center),

                const SizedBox(height: 50),

                FwTextField(
                  controller: provider.emailController,
                  hint: "Digite seu e-mail",
                  prefixIcon: Icons.email_outlined,
                ),

                const SizedBox(height: AppSpacing.md),

                FwTextField(
                  controller: provider.passwordController,
                  hint: "Digite sua senha",
                  prefixIcon: Icons.lock_outline,
                  obscureText: true,
                ),

                const SizedBox(height: AppSpacing.xl),

                FwButton(
                  text: "Entrar",
                  onPressed: () async {
                    try {
                      await provider.login();

                      if (context.mounted) {
                        context.go('/home');
                      }
                    } catch (e) {
                      if (context.mounted) {
                        ScaffoldMessenger.of(
                          context,
                        ).showSnackBar(SnackBar(content: Text(e.toString())));
                      }
                    }
                  },
                ),
                const SizedBox(height: AppSpacing.md),

                OutlinedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.g_mobiledata),
                  label: const Text("Entrar com Google"),
                ),

                const SizedBox(height: AppSpacing.lg),

                TextButton(
                  onPressed: () {
                    // depois colocaremos GoRouter
                  },
                  child: const Text("Esqueci minha senha"),
                ),

                TextButton(
                  onPressed: () {
                    // depois colocaremos GoRouter
                  },
                  child: const Text("Criar conta"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
