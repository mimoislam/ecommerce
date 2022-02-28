
class UserModel{

    String name;
   String email;
   String id;
   String password;
   List orders;
  /////getters
  UserModel({required this.name,required this.email,required this.id,required this.orders,required this.password});


  check({required String email,required String password}){
    return email==this.email&&password==this.password;
  }

}