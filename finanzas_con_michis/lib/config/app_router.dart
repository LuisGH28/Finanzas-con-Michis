import 'package:go_router/go_router.dart';
import '../screens/home/home_container.dart';

class AppRouter {
  static final router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomeContainer(),
      ),
    ],
  );
}
