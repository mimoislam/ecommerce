import 'package:app/pages/cart.dart';
import 'package:app/pages/get_start.dart';
import 'package:app/pages/home.dart';
import 'package:app/pages/order.dart';
import 'package:app/pages/order_accepte.dart';
import 'package:app/pages/order_products.dart';
import 'package:app/pages/product.dart';
import 'package:app/proividers/app.dart';
import 'package:app/proividers/order.dart';
import 'package:app/proividers/user.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
void main() {
   WidgetsFlutterBinding.ensureInitialized();


    runApp(MultiProvider(
        providers:[
          ChangeNotifierProvider.value(value: AppProvider()),
          ChangeNotifierProvider.value(value: UserProvider()),
          ChangeNotifierProvider.value(value: OrderProvider()),
        ] ,
        child: const MyApp()));





}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: GetStarted.route,
      routes: {
        GetStarted.route: (context)=>  const GetStarted(),
        HomePage.route: (context)=>  const HomePage(),
        Product.route: (context)=>   Product(),
        Cart.route: (context)=>   Cart(),
        OrderAccepted.route: (context)=>   const OrderAccepted(),
        OrderPage.route: (context)=>   const OrderPage(),
        OrderProducts.route: (context)=>    OrderProducts(),
      },
    );
  }
}

