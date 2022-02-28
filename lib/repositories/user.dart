import 'package:app/const.dart';
import 'package:app/model/user.dart';

class UserServices{

  UserModel? login(String email, String password){
    bool found=false ;
     UserModel?         user;
     for (var element in users) {
       found=element.check(email: email, password: password);
       if(found) {
        user=element;
      }

    }
    return user;
  }

}