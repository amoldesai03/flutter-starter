// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const SplashPage(),
      );
    },
    LoginRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const LoginPage(),
      );
    },
    SignUpRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const SignUpPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    MoviesListRoute.name: (routeData) {
      final args = routeData.argsAs<MoviesListRouteArgs>(
          orElse: () => const MoviesListRouteArgs());
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: MoviesListPage(
          key: args.key,
          type: args.type,
        ),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          SplashRoute.name,
          path: '/splash-page',
        ),
        RouteConfig(
          LoginRoute.name,
          path: '/login-page',
        ),
        RouteConfig(
          SignUpRoute.name,
          path: '/sign-up-page',
        ),
        RouteConfig(
          HomeRoute.name,
          path: '/',
        ),
        RouteConfig(
          MoviesListRoute.name,
          path: '/movies-list-page',
        ),
      ];
}

/// generated route for
/// [SplashPage]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute()
      : super(
          SplashRoute.name,
          path: '/splash-page',
        );

  static const String name = 'SplashRoute';
}

/// generated route for
/// [LoginPage]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: '/login-page',
        );

  static const String name = 'LoginRoute';
}

/// generated route for
/// [SignUpPage]
class SignUpRoute extends PageRouteInfo<void> {
  const SignUpRoute()
      : super(
          SignUpRoute.name,
          path: '/sign-up-page',
        );

  static const String name = 'SignUpRoute';
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '/',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [MoviesListPage]
class MoviesListRoute extends PageRouteInfo<MoviesListRouteArgs> {
  MoviesListRoute({
    Key? key,
    MovieType type = MovieType.upcoming,
  }) : super(
          MoviesListRoute.name,
          path: '/movies-list-page',
          args: MoviesListRouteArgs(
            key: key,
            type: type,
          ),
        );

  static const String name = 'MoviesListRoute';
}

class MoviesListRouteArgs {
  const MoviesListRouteArgs({
    this.key,
    this.type = MovieType.upcoming,
  });

  final Key? key;

  final MovieType type;

  @override
  String toString() {
    return 'MoviesListRouteArgs{key: $key, type: $type}';
  }
}
