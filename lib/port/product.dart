import 'package:widget_compose/entities/product.dart';
import 'package:widget_compose/models/Product.dart';

abstract class ProductRepository {
  Future<List<Product>> getByCategory(String category);
}

abstract class ProductService {
  Future<List<ProductToDisplay>> getByCategory(String category);
}