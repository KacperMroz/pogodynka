import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pogodynka/features/features.dart';
import 'package:pogodynka/services/navigation_service/navigation.dart';

class Pogodynka extends StatelessWidget {
  Pogodynka({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
      routeInformationProvider: _router.routeInformationProvider,
    );
  }

  final GoRouter _router = GoRouter(
      routes: [
        GoRoute(
            path: Navigation.splash,
            builder: (context, state) => const SplashPage(),
        ),
      ],
  );
}


