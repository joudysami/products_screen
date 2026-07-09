import 'dart:developer';
import 'package:injectable/injectable.dart';
import 'package:products/config/network/api_client.dart';
import 'package:products/feature/product/Data/Model/product.dart';
import 'package:products/feature/product/data/data_source/products_data_source.dart';

@LazySingleton(as: ProductsDataSource)
class ProductsDataSourceImpl implements ProductsDataSource {
  @override
  Future<List<Product>> getProducts() async {
    try {
      final response = await ApiClient.dio.get(
        "https://dummyjson.com/products",
      );

      if (response.statusCode == 200) {
        final data = response.data["products"] as List;
        log(response.data.toString());

        return data.map((e) => Product.fromJson(e)).toList();
      }

      throw Exception("Failed to fetch products: ${response.statusCode}");
    } catch (e) {
      log("ERROR: $e");
      throw Exception("Network error: $e");
    }
  }
}
