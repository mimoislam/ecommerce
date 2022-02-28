import 'package:app/pages/cart.dart';
import 'package:app/pages/get_start.dart';
import 'package:app/pages/home.dart';
import 'package:app/pages/order_accepte.dart';
import 'package:app/pages/product.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Cart.route,
      routes: {
        GetStarted.route: (context)=>  const GetStarted(),
        HomePage.route: (context)=>  const HomePage(),
        Product.route: (context)=>   Product(),
        Cart.route: (context)=>   Cart(),
        OrderAccepted.route: (context)=>   const OrderAccepted(),
      },
    );
  }
}

