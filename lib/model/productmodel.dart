class ProductModel {
  int id;
  String name;
  String brand;
  String price;
  String type;
  int quantity;
  String category;
  int categoryId;
  String imageUrl;
  int? total;

  ProductModel({
    required this.id,
    required this.name,
    required this.brand,
    required this.price,
    required this.type,
    required this.quantity,
    required this.category,
    required this.categoryId,
    required this.imageUrl,
    this.total
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'],
      name: json['name'],
      brand: json['brand'],
      price: json['price'],
      type: json['type'],
      quantity: json['quantity'],
      category: json['category'],
      categoryId: json['category_id'],
      imageUrl: json['image_url'],
      total: json['total']
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'brand': brand,
      'price': price,
      'type': type,
      'quantity': quantity,
      'category': category,
      'category_id': categoryId,
      'image_url': imageUrl,
    };
  }
}
