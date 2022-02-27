import 'package:flutter/material.dart';

class Product extends StatefulWidget {
  static const  route="/product";


  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  List items=[
    {
      'id':1,
      "imageUrl": "assets/images/products/women_shoes.png",
      "name": "Ankle Boots",
      "price": 49.99
    }
    ];
  var id;
  @override
  Widget build(BuildContext context) {
    id=ModalRoute.of(context)!.settings.arguments;
    print(id);
    return Scaffold(
      body: Container(

      ),
    );
  }
}
