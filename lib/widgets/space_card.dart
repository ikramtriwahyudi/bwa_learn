import 'package:bwa_learn/detail_page.dart';
import 'package:bwa_learn/models/space.dart';
import 'package:flutter/material.dart';

class SpaceCard extends StatelessWidget {
  final Space space;

  const SpaceCard({Key? key, required this.space}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const Detail_page(),
          ),
        );
      },
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
                width: 130,
                height: 110,
                color: const Color(0xffF6F7F8),
                child: Image.asset(space.image)),
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                space.nama,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const SizedBox(
                height: 10,
              ),
              Text.rich(
                TextSpan(
                  text: "\$${space.harga}",
                  style: TextStyle(fontSize: 16),
                  children: [
                    TextSpan(
                      text: " / month",
                      style: TextStyle(fontSize: 16),
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  Text(space.alamat),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(space.kota)
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
