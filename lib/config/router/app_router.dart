import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/screens/screens.dart';

final appRouter = GoRouter(initialLocation: '/', routes: [
  GoRoute(
    path: '/',
    name: HomeScreen.routeName,
    builder: (context, state) => const HomeScreen(),
  ),
  GoRoute(
    path: '/buttons',
    name: ButtonsScreen.routeName,
    builder: (context, state) => const ButtonsScreen(),
  ),
  GoRoute(
    path: '/cards',
    name: CardsScreen.routeName,
    builder: (context, state) => const CardsScreen(),
  ),
  GoRoute(
    path: '/progress',
    name: ProgressScreen.routeName,
    builder: (context, state) => const ProgressScreen(),
  ),
  GoRoute(
    path: '/snackbars',
    name: SnackbarScreen.routeName,
    builder: (context, state) => const SnackbarScreen(),
  ),
  GoRoute(
    path: '/animated',
    name: AnimatedScreen.routeName,
    builder: (context, state) => const AnimatedScreen(),
  ),
  GoRoute(
    path: '/ui-controls',
    name: UiControlsScreen.routeName,
    builder: (context, state) => const UiControlsScreen(),
  ),
  GoRoute(
    path: '/tutorial',
    name: AppTutorialScreen.routeName,
    builder: (context, state) => const AppTutorialScreen(),
  )
]);
