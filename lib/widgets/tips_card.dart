import 'package:bwa_learn/models/tips.dart';
import 'package:flutter/material.dart';

class TipsCard extends StatelessWidget {
  const TipsCard({super.key, required this.tips});

  final Tips tips;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 80,
          height: 80,
          child: Image.asset(tips.image),
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              tips.judul,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            Text(tips.update),
          ],
        ),
      ],
    );
  }
}
