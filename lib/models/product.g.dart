// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Product _$ProductFromJson(Map<String, dynamic> json) => Product()
  ..id = json['id'] as num
  ..title = json['title'] as String
  ..description = json['description'] as String
  ..price = json['price'] as num
  ..discountPercentage = json['discountPercentage'] as num
  ..rating = json['rating'] as num
  ..stock = json['stock'] as num
  ..brand = json['brand'] as String
  ..category = json['category'] as String
  ..thumbnail = json['thumbnail'] as String
  ..images = json['images'] as List<dynamic>;

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'price': instance.price,
      'discountPercentage': instance.discountPercentage,
      'rating': instance.rating,
      'stock': instance.stock,
      'brand': instance.brand,
      'category': instance.category,
      'thumbnail': instance.thumbnail,
      'images': instance.images,
    };
