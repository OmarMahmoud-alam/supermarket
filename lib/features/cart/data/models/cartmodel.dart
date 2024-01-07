import 'package:supermarket/features/home/data/models/productmodel.dart';

class CartModel {
  final List<ProductModel> cartItems;
  final double total;

  CartModel({required this.cartItems, required this.total});

  factory CartModel.fromJson(Map<String, dynamic> json) {
    return CartModel(
      cartItems: (json['cart'] as List)
          .map((item) => ProductModel.fromJson(item))
          .toList(),
      total: json['total'],
    );
  }
}
