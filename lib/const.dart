import 'package:app/model/order.dart';
import 'package:app/model/product.dart';
import 'package:app/model/user.dart';

List <UserModel>users=[
  UserModel(email: 'benoaie.islam@gmail.com',id: '1',name: "mimo",cart: [],password: "password"),
];

List products=[
  {
    "quantity":5,
    "product":Product(
        id: "1",
        name: "Ankle Boots",
        price: 49.99,
        full_name: "Faux Sued Ankle Boots",
        imageUrl: "assets/images/products/boots.png"),
  },
  {
    "quantity":5,
    "product":
    Product(
        id: "2",
        imageUrl: "assets/images/products/scarf.png",
        name: "Ankle Boots",
        price: 11.00,
        full_name:"Ankle Boots" ),

  },
  {
    "quantity":5,
    "product":
    Product(
        id: "3",
        imageUrl: "assets/images/products/backpack.png",
        name: "Red Scarf",
        price: 20.58,
        full_name:"Red Scarf" ),
  }


];


List <Order>orders=[
];