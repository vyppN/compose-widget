import 'package:flutter/cupertino.dart';
import 'package:widget_compose/entities/product.dart';
import 'package:widget_compose/widgets/compounds/cards/product_card.dart';

typedef ProductListGestureSelected = void Function(ProductToDisplay product);

class ProductList extends StatelessWidget {
  final List<ProductToDisplay> products;
  final ProductListGestureSelected onSelected;
  const ProductList({super.key, required this.products, required this.onSelected});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      width: MediaQuery.of(context).size.width,
      child:  ListView.separated(
          separatorBuilder: (context, index) {
            return const SizedBox(width: 16,);
          },
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
          scrollDirection: Axis.horizontal,
          itemCount: products.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              child: ProductCard(product: products[index],),
              onTap: () {
                onSelected(products[index]);
              },
            );
          },
      ),
    );
  }

}