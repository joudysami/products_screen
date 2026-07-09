import 'package:dio/dio.dart';
import 'package:products/feature/product/Data/Model/product.dart';
import 'package:retrofit/retrofit.dart';

part 'retrofit.g.dart';

@RestApi(baseUrl: 'https://dummyjson.com')
abstract class HomeApiClient {
  factory HomeApiClient(Dio dio, {String? baseUrl}) = _HomeApiClient;

  @GET('/products')
  Future<List<Product>> getProducts();
}