import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
// import 'package:widget_compose/mocks/products.dart';
import 'package:widget_compose/widgets/compounds/cards/product_card.dart';
import 'package:widget_compose/widgets/compounds/jumbotron/home_jumbotron.dart';
import 'package:widget_compose/widgets/compounds/list/product_list.dart';
import 'package:widget_compose/widgets/compounds/navbar/home_nav.dart';
import 'package:widget_compose/widgets/compounds/sections/catalog.dart';
import 'package:widget_compose/widgets/elements/inputs/search_input.dart';

import '../mocks/products.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: [
              const HomeNavbar(),
              Expanded(
                child: ListView(
                children: [
                  const HomeJumbotron(
                    imageUrl: 'https://images.unsplash.com/photo-1483985988355-763728e1935b?q=80&w=3870&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                    title: 'OUTERWEAR',
                    buttonTitle: 'View Collection',
                  ),
                  Catalog(products: clothes, title: 'Most Popular Outerwear'),
                  const SizedBox(height: 24,),
                  const HomeJumbotron(
                    imageUrl: 'https://images.unsplash.com/photo-1686715692509-8cb69d40d081?q=80&w=3154&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                    title: 'AUTOMOBILE',
                    buttonTitle: 'View Collection',
                  ),
                  Catalog(products: cars, title: 'Most Popular Car')
                ],
                      ),
              ),
            ],
          ),
        ),
    );
  }
}
