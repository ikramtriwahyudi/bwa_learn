import 'package:bwa_learn/models/space.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SpaceCard extends StatelessWidget {
  final Space space;

  const SpaceCard({Key? key, required this.space}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
              width: 130,
              height: 110,
              color: const Color(0xffF6F7F8),
              child: Image.asset(space.image)),
        ),
        SizedBox(
          width: 20,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              space.nama,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(space.harga),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(space.bulan),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(space.alamat),
                SizedBox(
                  width: 5,
                ),
                Text(space.kota)
              ],
            )
          ],
        )
      ],
    );
  }
}
