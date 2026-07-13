import 'package:go_router/go_router.dart';

import '../features/auth/presentation/pages/login_page.dart';
import '../features/showcase/presentation/pages/showcase_page.dart';
import '../features/splash/presentation/pages/splash_page.dart';
import 'package:fluxa_watch/features/auth/presentation/pages/register_page.dart';
import 'package:fluxa_watch/features/auth/presentation/pages/forgot_password_page.dart';
import 'package:fluxa_watch/features/home/presentation/pages/home_page.dart';

class AppRouter {
  AppRouter._();

  static final router = GoRouter(
    initialLocation: '/',

    routes: [
      GoRoute(path: '/', builder: (context, state) => const SplashPage()),

      GoRoute(path: '/login', builder: (context, state) => const LoginPage()),

      GoRoute(
        path: '/showcase',
        builder: (context, state) => const ShowcasePage(),
      ),
      GoRoute(path: '/register', builder: (_, __) => const RegisterPage()),

      GoRoute(
        path: '/forgot-password',
        builder: (_, __) => const ForgotPasswordPage(),
      ),
      GoRoute(path: '/home', builder: (_, __) => const HomePage()),
    ],
  );
}
