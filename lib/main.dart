import 'package:app/pages/get_start.dart';
import 'package:app/pages/home.dart';
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
      initialRoute: HomePage.route,
      routes: {
        GetStarted.route: (context)=>  const GetStarted(),
        HomePage.route: (context)=>  const HomePage(),
      },
    );
  }
}

