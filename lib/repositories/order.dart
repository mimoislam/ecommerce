import 'package:app/const.dart';
import 'package:app/model/order.dart';
import 'package:app/model/product.dart';



class OrderServices{
  add( List<Product> products){
    var order =Order(id: orders.length.toString(), timestamp: DateTime.now(), products: products);
    orders.add(order);
    return orders.length.toString();
  }
}