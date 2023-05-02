import 'package:coffeeshop/state_management/domain/entities/product.dart';
import 'package:coffeeshop/state_management/domain/entities/product_category.dart';

class ProductItem {
  ProductItem({this.category, this.product});
  final ProductCategory? category;
  final Product? product;
  bool get isCategory => category != null;
}
