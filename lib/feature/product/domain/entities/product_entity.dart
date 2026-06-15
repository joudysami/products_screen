class ProductEntity {
  final int? id;
  final String? title;
  final double? price;
  final String? description;
  final String? thumbnail;
  final double? rating;
  final double? discountPercentage;

  const ProductEntity({
    this.id,
    this.title,
    this.price,
    this.description,
    this.thumbnail,
    this.rating, this.discountPercentage,
  });
}
