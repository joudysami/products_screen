import 'package:dio/dio.dart';
import 'package:products/core/constant/app_endpoints.dart';

class ApiClient {
  ApiClient._();
  static final ApiClient _instance = ApiClient._();

  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: AppEndpoints.baseurl,
      connectTimeout: Duration(seconds: 20),
      receiveTimeout: Duration(seconds: 20),
    ),
  );
  static Dio get dio => _instance._dio;
}
