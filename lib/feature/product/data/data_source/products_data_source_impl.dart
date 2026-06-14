import 'dart:developer';
import 'package:products/feature/product/Data/data_source/products_data_source.dart';
import 'package:products/feature/product/Data/Model/product.dart';
import 'package:products/core/network/api_client.dart';

class ProductsDataSourceImpl implements ProductsDataSource{
  @override
  Future<List<Product>> getProducts() async {
 try {
  final response = await ApiClient.dio.get(
    "https://fakestoreapi.com/products",
  );

  if (response.statusCode == 200) {
    final data = response.data as List;

    return data.map((e) => Product.fromJson(e)).toList();
  }

  throw Exception("Failed to fetch products: ${response.statusCode}");
} catch (e) {
  log("ERROR: $e");
  throw Exception("Network error: $e");
}
  
  }
}