import 'package:ecommerce_app/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 60, left: 30, right: 20),
            child: Image.asset('assets/item/intro.png'),
          ),
          Padding(
            padding: EdgeInsets.only(top: 60, left: 20),
            child: Text(
              'Just a step away from home.',
              style: GoogleFonts.notoSerif(
                fontSize: 50,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "A great place to be!",
            style: TextStyle(
              fontSize: 20,
              color: Colors.grey,
            ),
          ),
          const Spacer(),
          GestureDetector(
            onTap: () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return HomeSCreen();
                },
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.purple,
              ),
              padding: const EdgeInsets.all(24),
              child: const Text(
                "Get Started",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
