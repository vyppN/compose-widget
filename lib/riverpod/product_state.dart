import 'package:freezed_annotation/freezed_annotation.dart';

import '../entities/product.dart';

part 'product_state.freezed.dart';

@freezed
class ProductState with _$ProductState {
  const factory ProductState({
    required List<List<ProductToDisplay>> products,
    required List<String> categories,
    required bool isLoading
  }) = _ProductState;
}