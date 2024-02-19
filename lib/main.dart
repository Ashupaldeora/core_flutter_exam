import 'package:core_flutter_exam/view/screens/arrivalscreen.dart';
import 'package:core_flutter_exam/view/screens/cartscreen.dart';
import 'package:core_flutter_exam/view/screens/homescreen.dart';
import 'package:core_flutter_exam/view/screens/productscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      initialRoute: '/cart',
      routes: {
        '/home': (context) => homescreen(),
        '/arrival': (context) => arrivalscreen(),
        '/product': (context) => productscreen(),
        '/cart': (context) => cartscreen(),
      },
    );
  }
}
