


import 'package:app/model/product.dart';

class Order{
String id ;
DateTime timestamp;
List<Product> products;
Order({required this.id,required this.timestamp,required this.products});
}