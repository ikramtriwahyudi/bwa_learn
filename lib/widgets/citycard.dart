import 'package:bwa_learn/models/city.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CityCard extends StatelessWidget {
  final City city;

  const CityCard({Key? key, required this.city}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        height: 150,
        width: 120,
        color: const Color(0xffF6F7F8),
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  city.imageUrl,
                  width: 120,
                  height: 102,
                  fit: BoxFit.cover,
                ),
                city.isFavorit
                    ? Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          width: 50,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Color(0xff5843BE),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                            ),
                          ),
                          child: Image.asset(
                            "assets/star.png",
                            scale: 4.5,
                          ),
                        ),
                      )
                    : Container()
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              city.name,
              style: const TextStyle(fontSize: 16),
            )
          ],
        ),
      ),
    );
  }
}
