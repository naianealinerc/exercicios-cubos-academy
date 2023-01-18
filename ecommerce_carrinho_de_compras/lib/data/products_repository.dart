import 'package:dio/dio.dart';
import '../models/product.dart';

class ProductRepository {
  final String url = "https://picsum.photos/v2/list";
  final _dio = Dio();
  

  Future<List<Product>> getListProducts() async {
    final response = await _dio.get(url);
    return (response.data as Iterable)
        .map((data) => Product.fromMap(data))
        .toList();
  }

  
}
