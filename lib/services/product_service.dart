import 'package:widget_compose/entities/product.dart';
import 'package:widget_compose/port/product.dart';

class ProductServiceImp extends ProductService {
  final ProductRepository repository;
  ProductServiceImp(this.repository);

  @override
  Future<List<ProductToDisplay>> getByCategory(String category) async {
    final rawProducts = await repository.getByCategory(category);
    return rawProducts.map((product) => ProductToDisplay(id: product.id.toString(), category: product.category!, name: product.title!, imageUrl: product.image!, price: product.price!.toDouble())).toList();
  }

}