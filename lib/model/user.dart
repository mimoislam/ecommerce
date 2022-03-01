

import 'package:app/model/product.dart';

class UserModel{

    String name;
   String email;
   String id;
   String password;
   List<Product> cart;
   List<String> orders;
  /////getters
  UserModel({
    required this.name,
    required this.email,
    required this.id,
    required this.password,
    required this.cart,
    required this.orders
  });
  addToCart({required Product product}){
    cart.add(product);
  }
    addToOrder({required String orderId}){
      orders.add(orderId);
      cart=[];
    }

  check({
    required String email,required String password
  }){
    return email==this.email&&password==this.password;
  }

  getCart(){
    return cart;
  }

}