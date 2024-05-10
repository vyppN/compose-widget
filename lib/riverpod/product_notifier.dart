import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:widget_compose/di/get_it.dart';
import 'package:widget_compose/entities/product.dart';
import 'package:widget_compose/port/product.dart';
import 'package:widget_compose/riverpod/product_state.dart';

part 'product_notifier.g.dart';

@riverpod
class ProductController extends _$ProductController {
  @override
  ProductState build() => const ProductState(products: [], categories: [], isLoading: false);

  void getAllProduct() async {
    final service = getIt.get<IProductService>();

    state = state.copyWith(
      isLoading: true
    );

    // Get category ทั้งหมด
    final categories = await service.getCategories();
    // Loop สร้าง Future list ในการเรียกดู product by category เอาไว้
    final productsFetchers = categories.map((e) => service.getByCategory(e));
    // เอา Future list ทั้งหมดมารอ reponse พร้อมๆกัน
    // ข้อดี: ทุกเส้นถูกเรียกพร้อมกัน ใช้เวลาเท่าเส้นที่เรียกนานที่สุด
    // ข้อเสีย: Server รับ load มากขึ้น เพราะถูกเรียกพร้อมกันทีเดียวหลายเส้น ต้องมีการวางแผน scaling ที่ดี
    final products = await Future.wait(productsFetchers);

    state = state.copyWith(
      categories: categories,
      products: products,
      isLoading: false
    );
  }
}