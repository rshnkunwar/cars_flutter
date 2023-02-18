import 'dart:convert';
import 'package:blacktech_cars/models/category_model.dart';
import 'package:blacktech_cars/models/product_model.dart';
import 'package:equatable/equatable.dart';

CategorisListModel categorisListModelFromJson(String str) =>
    CategorisListModel.fromJson(json.decode(str));

String categorisListModelToJson(CategorisListModel data) =>
    json.encode(data.toJson());

class CategorisListModel extends Equatable {
  const CategorisListModel({
    required this.categories,
    required this.products,
  });

  final List<Category> categories;
  final List<Product> products;

  factory CategorisListModel.fromJson(Map<String, dynamic> json) =>
      CategorisListModel(
        categories: List<Category>.from(
            json["categories"].map((x) => Category.fromJson(x))),
        products: List<Product>.from(
            json["all_products"].map((x) => Product.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "categories": List<dynamic>.from(categories.map((x) => x.toJson())),
        "products": List<dynamic>.from(products.map((x) => x.toJson())),
      };

  @override
  List<Object> get props => [categories, products];
}
