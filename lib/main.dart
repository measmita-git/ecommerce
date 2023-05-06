// import 'package:ecommerce_app/login_screen.dart';
// import 'package:ecommerce_app/signIn_screen.dart';
// import 'package:ecommerce_app/splash_screen.dart';
import 'package:ecommerce_app/cart_screen.dart';
import 'package:ecommerce_app/signIn_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SignInScreen(),
      ),
    );
  }
}
