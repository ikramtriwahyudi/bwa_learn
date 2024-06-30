import 'package:flutter/material.dart';

class Navbar_botton extends StatelessWidget {
  const Navbar_botton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Image.asset(
          "assets/icon home.png",
          scale: 10,
        ),
      ),
    );
  }
}
