import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:crafted_by_mobile_app/models/product.dart';

class ProductApi {
  static Future<List<Product>> getProducts(
      int pageKey,
      int pageSize
      ) async {
    try {
      final response = await http.get(Uri.parse('https://api.test.fabriquepar.com/api/products/?page=$pageKey&limit=$pageSize'));
      if (response.statusCode == 200) {
        Map<String, dynamic> body = jsonDecode(response.body);
        List<Product> products = body['data'].map<Product>((dynamic item) => Product.fromJson(item)).toList();
        return products;
      } else {
        throw 'Failed to load products';
      }
    } catch (error) {
      rethrow;
    }
  }
}