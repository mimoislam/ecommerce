

import 'package:app/model/product.dart';

class UserModel{

    String name;
   String email;
   String id;
   String password;
   List cart;
  /////getters
  UserModel({
    required this.name,
    required this.email,
    required this.id,
    required this.password,
    required this.cart
  });
  addToCart({required Product product}){
    cart.add(product);
  }

  check({
    required String email,required String password
  }){
    return email==this.email&&password==this.password;
  }

}