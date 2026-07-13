import 'package:go_router/go_router.dart';

import '../features/auth/presentation/pages/forgot_password_page.dart';
import '../features/auth/presentation/pages/login_page.dart';
import '../features/auth/presentation/pages/register_page.dart';
import '../features/home/presentation/pages/main_page.dart';
import '../features/showcase/presentation/pages/showcase_page.dart';
import '../features/splash/presentation/pages/splash_page.dart';

class AppRouter {
  AppRouter._();

  static final router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(path: '/', builder: (_, __) => const SplashPage()),

      GoRoute(path: '/login', builder: (_, __) => const LoginPage()),

      GoRoute(path: '/register', builder: (_, __) => const RegisterPage()),

      GoRoute(
        path: '/forgot-password',
        builder: (_, __) => const ForgotPasswordPage(),
      ),

      GoRoute(path: '/showcase', builder: (_, __) => const ShowcasePage()),

      GoRoute(path: '/home', builder: (_, __) => const MainPage()),
    ],
  );
}
