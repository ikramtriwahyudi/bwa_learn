import 'package:bwa_learn/homepage.dart';
import 'package:bwa_learn/theme.dart';
import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset("assets/bottom.png"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/logol.png"),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "Find Cozy House \nto Stay and Happy",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Stop membuang banyak waktu \npada tempat yang tidak habitable",
                    style: TextStyle(fontSize: 16, color: secondary),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    width: 250,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: button),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomePage(),
                          ),
                        );
                      },
                      child: Text(
                        "Explore Now",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: primary),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
