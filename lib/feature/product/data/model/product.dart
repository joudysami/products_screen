import 'package:json_annotation/json_annotation.dart';
import 'package:products/feature/product/domain/entities/product_entity.dart';


part 'product.g.dart';

@JsonSerializable()
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
    super.discountPercentage,
  });

  ProductEntity toEntity() {
    return ProductEntity(
      id: id,
      title: title,
      price: price,
      description: description,
      thumbnail: thumbnail,
      rating: rating,
      discountPercentage: discountPercentage,
    );
  }

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);

  Map<String, dynamic> toJson() => _$ProductToJson(this);
}

@JsonSerializable()
class Rating {
  double? rate;
  int? count;

  Rating({this.rate, this.count});

  factory Rating.fromJson(Map<String, dynamic> json) =>
      _$RatingFromJson(json);

  Map<String, dynamic> toJson() => _$RatingToJson(this);
}
