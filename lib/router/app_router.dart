import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo_structure/ui/auth/login/login_page.dart';
import 'package:flutter_demo_structure/ui/auth/sign_up/sign_up_page.dart';
import 'package:flutter_demo_structure/ui/home/home_page.dart';
import 'package:flutter_demo_structure/ui/home/movie_list_page.dart';
import 'package:flutter_demo_structure/ui/splash_page.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: SplashPage,
    ),
    AutoRoute(page: LoginPage),
    AutoRoute(page: SignUpPage),
    AutoRoute(page: HomePage, initial: true),
    AutoRoute(page: MoviesListPage),
  ],
)
// extend the generated private router
class AppRouter extends _$AppRouter {}
