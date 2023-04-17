import 'package:coffeeshop/state_management/domain/entities/product.dart';
import 'package:coffeeshop/state_management/domain/entities/product_category.dart';

class DataProduct {
  static List<ProductCategory> items = [
    ProductCategory(
      name: "Cafe",
      products: [
        Product(
          id: 1,
          name: "Cafe Nâu",
          price: "30.000",
          image: "assets/images/product_1.jpg",
        ),
        Product(
          id: 2,
          name: "Cafe Đen",
          price: "30.000",
          image: "assets/images/product_1.jpg",
        ),
        Product(
          id: 3,
          name: "Bạc xỉu đá",
          price: "35.000",
          image: "assets/images/product_1.jpg",
        ),
        Product(
          id: 4,
          name: "Cacao Trứng Nóng",
          price: "35,000",
          image: "assets/images/product_1.jpg",
        ),
        Product(
          id: 5,
          name: "Bạc Xỉu nóng",
          price: "35,000",
          image: "assets/images/product_1.jpg",
        ),
        Product(
          id: 6,
          name: "Cà Phê Trứng Nóng",
          price: "35,000",
          image: "assets/images/product_1.jpg",
        ),
        Product(
          id: 7,
          name: "Cà Phê Trứng Đá",
          price: "35,000",
          image: "assets/images/product_1.jpg",
        ),
        Product(
          id: 8,
          name: "Cà Phê Bạc Hà Đá",
          price: "30.000",
          image: "assets/images/product_1.jpg",
        ),
        Product(
          id: 9,
          name: "Cappuccino",
          price: "35.000",
          image: "assets/images/product_1.jpg",
        ),
        Product(
          id: 10,
          name: "Bạc Sỉu Cốt Dừa",
          price: "30.000",
          image: "assets/images/product_1.jpg",
        )
      ],
    ),
    ProductCategory(
      name: "Nước ép",
      products: [
        Product(
          id: 1,
          name: "Nước Ép Cam Cà Rốt",
          price: "48.000",
          image: "assets/images/product_2.jpg",
        ),
        Product(
          id: 2,
          name: "Nước Ép Dưa Hấu",
          price: "38.000",
          image: "assets/images/product_2.jpg",
        ),
        Product(
          id: 3,
          name: "Nước Ép Cam Dứa",
          price: "48.000",
          image: "assets/images/product_2.jpg",
        ),
        Product(
          id: 4,
          name: "Nước Cam",
          price: "48.000",
          image: "assets/images/product_2.jpg",
        ),
        Product(
          id: 5,
          name: "Nước Ép Ổi",
          price: "48.000",
          image: "assets/images/product_2.jpg",
        ),
        Product(
          id: 6,
          name: "Nước Ép Cam Quýt",
          price: "38.000",
          image: "assets/images/product_2.jpg",
        ),
        Product(
          id: 7,
          name: "Greentea Frappe",
          price: "70.000",
          image: "assets/images/product_2.jpg",
        ),
        Product(
          id: 8,
          name: "Nước ép Cóc/ Ổi (430ml)",
          price: "35.000",
          image: "assets/images/product_2.jpg",
        ),
        Product(
          id: 9,
          name: "Nước ép Táo/ Xoài (430ml)",
          price: "35.000",
          image: "assets/images/product_2.jpg",
        ),
        Product(
          id: 10,
          name: "Combo: 5 Sinh tố  Bơ (430ml)",
          price: "172.000",
          image: "assets/images/product_2.jpg",
        )
      ],
    ),
    ProductCategory(
      name: "Bánh ngọt",
      products: [
        Product(
          id: 1,
          name: "Tart Mặt Trời",
          price: "5.000",
          image: "assets/images/product_3.jpg",
        ),
        Product(
          id: 2,
          name: "Tart Scl Hạnh Nhân",
          price: "6.000",
          image: "assets/images/product_3.jpg",
        ),
        Product(
          id: 3,
          name: "Tart Dâu Tây",
          price: "5.000",
          image: "assets/images/product_3.jpg",
        ),
        Product(
          id: 4,
          name: "Lemon Cheesecake",
          price: "45.000",
          image: "assets/images/product_3.jpg",
        ),
        Product(
          id: 5,
          name: "Lemon Cheesecake",
          price: "48.000",
          image: "assets/images/product_3.jpg",
        ),
      ],
    )
  ];
}
