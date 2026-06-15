import 'package:products/feature/product/domain/entities/product_entity.dart';

class Product extends ProductEntity {
  final String? category;

  Product({
    super.id,
    super.title,
    super.price,
    super.description,
    this.category,
    super.thumbnail,
    super.rating,
    super.discountPercentage
  });
  ProductEntity toEntity() {
    return ProductEntity(
      id: id,
      title: title,
      price: price,
      description: description,
      thumbnail: thumbnail,
      rating: rating,
      discountPercentage: discountPercentage
    );
  }

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'] as int?,
      title: json['title'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      description: json['description'] as String?,
      category: json['category'] as String?,
    thumbnail: json['thumbnail'] ??
           (json['images'] != null && json['images'] is List
              ? json['images'][0]
              : null),
      rating: (json['rating'] as num?)?.toDouble(),
      discountPercentage: (json['discountPercentage'] as num?)?.toDouble());
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'price': price,
      'description': description,
      'category': category,
      'thumbnail': thumbnail,
      'rating': rating,
      'discountPercentage':discountPercentage
    };
  }
}

class Rating {
  double? rate;
  int? count;

  Rating({this.rate, this.count});

  factory Rating.fromJson(Map<String, dynamic> json) {
    return Rating(
      rate: (json['rate'] as num?)?.toDouble(),
      count: json['count'] as int?,
    );
  }

  Map<String, dynamic> toJson() {
    return {'rate': rate, 'count': count};
  }
}
