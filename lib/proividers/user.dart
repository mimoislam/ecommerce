import 'package:app/model/user.dart';
import 'package:app/repositories/user.dart';
import 'package:flutter/material.dart';


enum Status{
  Uninitialized,Unauthenticated,Authentienting,Authenticated
}
class UserProvider with ChangeNotifier {

late UserModel? user;
UserServices userServices=UserServices();

checkLogin({required String email,required String password}){
 user= userServices.login(email, password);
  print(user);
}


}