import 'dart:developer';

import 'package:products/core/Data/products_data_source.dart';
//import 'package:products/core/constant/app_endpoints.dart';
import 'package:products/core/model/products/product.dart';
import 'package:products/core/network/api_client.dart';

class ProductsDataSourceImpl implements ProductsDataSource{
  @override
  Future<List<Product>> getProducts() async {
  final response =await ApiClient.dio.get("https://fakestoreapi.com/products");
  log(response.data.toString());
  
  if (response.statusCode == 200) {
 final data = response.data;

if (data is List) {
  return data.map((e) => Product.fromJson(e)).toList();
} else {
  throw Exception("Expected List but got: $data");
}
  }
  throw Exception("Failed to fetch products");
  
  }
}