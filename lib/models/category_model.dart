import 'package:equatable/equatable.dart';

import 'product_model.dart';

class Category extends Equatable {
  const Category({
    required this.title,
    required this.subtitle,
    required this.products,
  });

  final String title;
  final String subtitle;
  final List<Product> products;

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        title: json["title"],
        subtitle: json["subtitle"],
        products: List<Product>.from(
            json["products"].map((x) => Product.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "subtitle": subtitle,
        "products": List<dynamic>.from(products.map((x) => x.toJson())),
      };

  @override
  List<Object> get props => [title, subtitle, products];
}
