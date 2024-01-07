import 'package:supermarket/features/home/data/models/bannermodel.dart';
import 'package:supermarket/features/home/data/models/categorymdel.dart';
import 'package:supermarket/features/home/data/models/productmodel.dart';

class Homemodel {
  String? status;

  late List<BannerModel> banners;
  late List<CategoryModel> categories;
  late List<ProductModel> products;

  Homemodel({
    this.status,
    required this.banners,
    required this.categories,
    required this.products,
  });

  Homemodel.fromJson(Map<String, dynamic> json) {
    status = json['status'];

    banners = <BannerModel>[];
    categories = <CategoryModel>[];
    products = <ProductModel>[];
    banners =
        (json['banner']).map((item) => BannerModel.fromJson(item)).toList();
    categories = (json['category'] as List)
        .map((item) => CategoryModel.fromJson(item))
        .toList();
    products = (json['product'] as List)
        .map((item) => ProductModel.fromJson(item))
        .toList();
  }
}
