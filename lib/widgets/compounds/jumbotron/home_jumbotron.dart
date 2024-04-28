import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:widget_compose/widgets/elements/buttons/primary_button.dart';
import 'package:widget_compose/widgets/elements/texts/big_text.dart';

class HomeJumbotron extends StatelessWidget {
  const HomeJumbotron({super.key});

  final String url = 'https://images.unsplash.com/photo-1483985988355-763728e1935b?q=80&w=3870&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D';

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          Image.network(
            url,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          const Padding(
            padding: EdgeInsets.all(8),
            child: Row(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    BigText(title: 'OUTERWEAR'),
                    PrimaryButton(title: 'View Collection')
                  ],
                ),
              ),
            ],
          ),)
        ],
      ),
    );
  }

}