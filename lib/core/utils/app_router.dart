import 'package:bookly_app/feature/home/presentation/view/home_screen.dart';
import 'package:bookly_app/feature/splash/presentation/view/splach_screen.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeScreen = '/home screen';
  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) {
          return const SplashScreen();
        },
        routes: [
          GoRoute(
            path: kHomeScreen,
            builder: (context, state) {
              return const HomeScreen();
            },
          ),
        ],
      ),
    ],
  );
}
