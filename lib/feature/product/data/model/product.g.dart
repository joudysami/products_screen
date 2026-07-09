// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
  id: (json['id'] as num?)?.toInt(),
  title: json['title'] as String?,
  price: (json['price'] as num?)?.toDouble(),
  description: json['description'] as String?,
  category: json['category'] as String?,
  thumbnail: json['thumbnail'] as String?,
  rating: (json['rating'] as num?)?.toDouble(),
  discountPercentage: (json['discountPercentage'] as num?)?.toDouble(),
);

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'price': instance.price,
  'description': instance.description,
  'thumbnail': instance.thumbnail,
  'rating': instance.rating,
  'discountPercentage': instance.discountPercentage,
  'category': instance.category,
};

Rating _$RatingFromJson(Map<String, dynamic> json) => Rating(
  rate: (json['rate'] as num?)?.toDouble(),
  count: (json['count'] as num?)?.toInt(),
);

Map<String, dynamic> _$RatingToJson(Rating instance) => <String, dynamic>{
  'rate': instance.rate,
  'count': instance.count,
};
