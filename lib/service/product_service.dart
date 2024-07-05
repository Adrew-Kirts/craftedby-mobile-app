import 'package:crafted_by_mobile_app/models/product.dart';
import 'package:crafted_by_mobile_app/providers/product_api.dart';
import 'package:flutter/material.dart';

class ProductService {
  static Future<List<Product>> getProducts(
      int pageKey,
      int pageSize) async {
    return ProductApi.getProducts(
      pageKey,
      pageSize
    );
  }

  static navigateToProductDetail(
      BuildContext context,
      Product product) {
    Navigator.of(context).pushNamed(
        '/products/${product.id}',
      arguments: product
    );}
}