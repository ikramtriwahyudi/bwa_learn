import 'package:bwa_learn/models/city.dart';
import 'package:bwa_learn/models/space.dart';
import 'package:bwa_learn/models/tips.dart';
import 'package:bwa_learn/widgets/citycard.dart';
import 'package:bwa_learn/theme.dart';
import 'package:bwa_learn/widgets/space_card.dart';
import 'package:bwa_learn/widgets/tips_card.dart';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "WARUNG MAS IKRAMEE",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                ),
                Text(
                  "Asli masakan nusantara",
                  style: TextStyle(
                      color: secondary,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Popular Menu",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 150,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      CityCard(
                        city: City(
                            id: 1,
                            name: "Rendang",
                            imageUrl: "assets/rendang.png",
                            isFavorit: false),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      CityCard(
                        city: City(
                            id: 2,
                            name: "Soto",
                            imageUrl: "assets/soto.png",
                            isFavorit: false),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      CityCard(
                        city: City(
                            id: 3,
                            name: "Sate",
                            imageUrl: "assets/sate.png",
                            isFavorit: false),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Recommended Menu",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                const SizedBox(
                  height: 20,
                ),
                SpaceCard(
                  space: Space(
                      id: 1,
                      image: "assets/coto.png",
                      nama: "Coto Megalodon",
                      harga: "\50",
                      bulan: "/ 1 Baskom",
                      alamat: "Bisa",
                      kota: "Pay later"),
                ),
                const SizedBox(
                  height: 20,
                ),
                SpaceCard(
                  space: Space(
                      id: 2,
                      image: "assets/balado.png",
                      nama: "Buaya Balado",
                      harga: "\60",
                      bulan: "/ 1 Ember",
                      alamat: "Bisa",
                      kota: "Pay later"),
                ),
                const SizedBox(
                  height: 20,
                ),
                SpaceCard(
                  space: Space(
                      id: 3,
                      image: "assets/oseng.png",
                      nama: "Oseng Trex",
                      harga: "90",
                      bulan: "/ 1 Piring",
                      alamat: "Bisa",
                      kota: "Pay later"),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Tips & Cara makan yang benar",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                const SizedBox(
                  height: 10,
                ),
                TipsCard(
                  tips: Tips(
                      id: 1,
                      image: "assets/tips2.png",
                      judul: "Pertanyaan",
                      update: "Update 16 Mei 2024"),
                ),
                const SizedBox(
                  height: 10,
                ),
                TipsCard(
                  tips: Tips(
                      id: 1,
                      image: "assets/tips1.png",
                      judul: "Pertanyaan",
                      update: "Update 16 Mei 2024"),
                ),
                const SizedBox(
                  height: 70,
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Container(
          height: 65,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: const Color(0xffF6F7F8),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                "assets/icon home.png",
                width: 26,
                height: 26,
              ),
              Image.asset(
                "assets/icon mail.png",
                width: 26,
                height: 26,
              ),
              Image.asset(
                "assets/icon card.png",
                width: 26,
                height: 26,
              ),
              Image.asset(
                "assets/icon love.png",
                width: 26,
                height: 26,
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
