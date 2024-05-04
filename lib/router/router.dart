import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widget_compose/entities/product.dart';
import 'package:widget_compose/screens/detail_screen.dart';
import 'package:widget_compose/screens/home_screen.dart';

final router = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (BuildContext context, GoRouterState state) {
      return const HomePage();
    },
    routes: [
      GoRoute(
          path: 'detail',
        builder: (BuildContext context, GoRouterState state) {
            return DetailScreen(state.extra as ProductToDisplay);
        }
      )
    ]
  )
]);