import 'package:app/model/produc_size_color.dart';
import 'package:app/model/product.dart';
import 'package:flutter/material.dart';

class ProductOrder{
  ProductSizeColor productSizeColor;
  Product product;
  ProductOrder({
    required this.product,
    required this.productSizeColor
  });
}