import 'package:supermarket/model/categorymdel.dart';
import 'package:supermarket/model/reviewmode.dart';

class Productdetails {
  int id;
  String name;
  int categoryId;
  String brand;
  double price;
  String? description;
  int quantity;
  String image;
  int availability;
  int isVisible;
  String type;
  double myRate;
  bool isFavorite;
  double averageRate;
  CategoryModel category;
  List<Review> reviews;

  Productdetails({
    required this.id,
    required this.name,
    required this.categoryId,
    required this.brand,
    required this.price,
    required this.description,
    required this.quantity,
    required this.image,
    required this.availability,
    required this.isVisible,
    required this.type,
    required this.myRate,
    required this.isFavorite,
    required this.averageRate,
    required this.category,
    required this.reviews,
  });

  factory Productdetails.fromJson(Map<String, dynamic> json) {
    return Productdetails(
      id: json['id'],
      name: json['name'],
      categoryId: json['category_id'],
      brand: json['brand'],
      price: double.parse(json['price']),
      description: json['description'],
      quantity: json['quantity'],
      image: json['image'],
      availability: json['availability'],
      isVisible: json['isvisible'],
      type: json['type'],
      myRate: double.parse(json['myrate'].toString()),
      isFavorite: json['favourite'],
      averageRate: double.parse(json['avergerate']),
      category: CategoryModel.fromJson(json['category']),
      reviews: (json['review'] as List)
          .map((review) => Review.fromJson(review))
          .toList(),
    );
  }
}
