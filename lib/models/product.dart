import 'package:json_annotation/json_annotation.dart';

part 'product.g.dart';

@JsonSerializable()
class Product {
  Product();

  late num id;
  late String title;
  late String description;
  late num price;
  late num discountPercentage;
  late num rating;
  late num stock;
  late String brand;
  late String category;
  late String thumbnail;
  late List images;
  
  factory Product.fromJson(Map<String,dynamic> json) => _$ProductFromJson(json);
  Map<String, dynamic> toJson() => _$ProductToJson(this);
}
