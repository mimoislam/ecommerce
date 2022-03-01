import 'package:app/model/produc_size_color.dart';
import 'package:app/model/product.dart';
import 'package:app/model/product_order.dart';
import 'package:app/model/user.dart';
import 'package:app/repositories/user.dart';
import 'package:flutter/material.dart';


enum Status{
  Uninitialized,Unauthenticated,Authentienting,Authenticated
}
class UserProvider with ChangeNotifier {
  Status _status = Status.Uninitialized;
  late UserModel? user;
  UserServices userServices=UserServices();
  Status get status => _status;

  bool checkLogin({required String email,required String password}){
   var userModel= userServices.login(email, password);
  if(userModel!=null){
    user=userModel;
    return true;
  }
  return false;
  }
  addToCart(Product product){
    user!.addToCart(product: product);

  }


}