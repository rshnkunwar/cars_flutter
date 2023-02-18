import 'package:equatable/equatable.dart';

class Product extends Equatable {
  const Product({
    required this.name,
    required this.detail,
    required this.image,
    required this.dateAdded,
  });

  final String name;
  final String detail;
  final String image;
  final String dateAdded;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        name: json["name"],
        detail: json["detail"],
        image: json["image"],
        dateAdded: json["date-added"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "detail": detail,
        "image": image,
        "date-added": dateAdded,
      };

  @override
  List<Object> get props => [name, detail, image, dateAdded];
}
