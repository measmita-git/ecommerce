import 'package:ecommerce_app/login_screen.dart';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  static const String id = 'splash_screen';
  // const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  // @override
  // void initState() {
  //   super.initState();
  //   _navigatetohome();
  // }

  // _navigatetologin() async {
  //   await Future.delayed(Duration(milliseconds: 1200), () {});
  //   Navigator.pushReplacement(
  //     context,
  //     MaterialPageRoute(
  //       builder: (context) => LoginScreen(),
  //     ),
  //   );
  // }

  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(builder: ((context) {
            return LoginScreen();
          })),
        ),
        child: Image.asset('assets/item/logo.jpg'),
      ),
      // appBar: AppBar(),
      body: Container(
        child: Center(
          child: Image.asset('assets/item/logo.jpg'),
        ),
      ),
    );
  }
}
