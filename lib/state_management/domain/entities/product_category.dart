import 'package:coffeeshop/state_management/domain/entities/product.dart';

class ProductCategory {
  ProductCategory({
    this.name,
    this.products,
  });
  final String? name;
  final List<Product>? products;
}
