import 'dart:convert';

class ProductModel {
  ProductModel({
    required this.productName,
    required this.productImage,
    required this.price,
    required this.description,
    required this.stock,
  });

  String productName;
  String productImage;
  double price;
  String description;
  double stock;

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
        productName: json["productName"],
        productImage: json["productImage"],
        price: json["price"].toDouble(),
        description: json["description"],
        stock: json["stock"].toDouble(),
      );
  Map<String, dynamic> toJson() => {
        "productName": productName,
        "productImage": productImage,
        "description": description,
        "price": price,
        "stock": stock,
      };
}

List<ProductModel> parse(String? json) {
  if (json == null) {
    return [];
  }

  final List parsed = jsonDecode(json)['product'];
  return parsed.map((data) => ProductModel.fromJson(data)).toList();
}
