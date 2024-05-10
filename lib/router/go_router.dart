import 'package:go_router/go_router.dart';
import 'package:widget_compose/entities/product.dart';
import 'package:widget_compose/screens/home_screen.dart';
import 'package:widget_compose/screens/product_detail_screen.dart';

final router = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, state) {
      return const HomePage();
    },
    routes: [
      GoRoute(
        path: 'detail',
        builder: (context, state) {
          final product = state.extra as ProductToDisplay;
          return ProductDetailScreen(product: product,);
        },
      )
    ]
  ),

]);