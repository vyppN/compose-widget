import 'package:flutter/material.dart';
import 'package:widget_compose/entities/product.dart';
import 'package:widget_compose/widgets/elements/texts/price_text.dart';
import 'package:widget_compose/widgets/elements/texts/small_text.dart';
import 'package:widget_compose/widgets/elements/texts/text_title.dart';

class DetailScreen extends StatefulWidget {
  final ProductToDisplay product;
  const DetailScreen(this.product,{super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {

  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      appBar: AppBar(title: Text(widget.product.name),),
        body: SafeArea(
            child: ListView(
              children: [
                Image.network(widget.product.imageUrl),
                TextTitle(title: widget.product.name),
                PriceText(price: 'Price: ${widget.product.price}\$', color: Colors.black,),
                Text(widget.product.description ?? ''),
              ],
            )
        )
    );
  }
}
