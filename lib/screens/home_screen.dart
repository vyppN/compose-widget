import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:widget_compose/di/get_it.dart';
import 'package:widget_compose/entities/product.dart';
import 'package:widget_compose/network/http/dio_service.dart';
import 'package:widget_compose/repositories/product_repository.dart';
import 'package:widget_compose/riverpod/product_controller.dart';
import 'package:widget_compose/services/product_service.dart';
// import 'package:widget_compose/mocks/products.dart';
import 'package:widget_compose/widgets/compounds/cards/product_card.dart';
import 'package:widget_compose/widgets/compounds/jumbotron/home_jumbotron.dart';
import 'package:widget_compose/widgets/compounds/list/product_list.dart';
import 'package:widget_compose/widgets/compounds/loading/loading_indicator.dart';
import 'package:widget_compose/widgets/compounds/navbar/home_nav.dart';
import 'package:widget_compose/widgets/compounds/sections/catalog.dart';
import 'package:widget_compose/widgets/elements/inputs/search_input.dart';

import '../mocks/products.dart';
import '../port/product.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {

  @override
  void initState() {
    super.initState();

    Future((){
      getProducts();
    });
  }

  void getProducts() async {
    ref.read(productControllerProvider.notifier).getAllProduct();
  }

  void onSelectProduct(ProductToDisplay product) {
    context.go('/detail', extra: product);
  }

  @override
  Widget build(BuildContext context) {
    final productProvider = ref.watch(productControllerProvider);


    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: [
              const HomeNavbar(),
              Expanded(
                  child: productProvider.isLoading
                      ? const Loading()
                      : ListView.builder(
                    itemCount: productProvider.categories.length,
                    itemBuilder: (context, index) {
                      return Column(
                        key: UniqueKey(),
                        children: [
                          HomeJumbotron(
                              imageUrl: categoryImages[productProvider.categories[index]]!,
                              title: productProvider.categories[index].toUpperCase(),
                              buttonTitle: 'View Collection'
                          ),
                          Catalog(title: 'All products',products: productProvider.products[index], onSelectProduct: onSelectProduct,),
                          const SizedBox(height: 24,)
                        ],
                      );},)
              )
            ],
          ),
        ),
    );
  }
}
