import 'package:bwa_learn/homepage.dart';
import 'package:bwa_learn/models/detail.dart';

import 'package:bwa_learn/widgets/detail_card.dart';

import 'package:flutter/material.dart';

class Detail_page extends StatefulWidget {
  const Detail_page({super.key});

  @override
  State<Detail_page> createState() => _Detail_pageState();
}

class _Detail_pageState extends State<Detail_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Image.asset(
              "assets/detail1.png",
              width: MediaQuery.of(context).size.width,
              height: 275,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomePage(),
                          ));
                    },
                    child: Image.asset(
                      "assets/btn_back.png",
                      width: 40,
                    ),
                  ),
                  Image.asset(
                    "assets/btn_wishlist.png",
                    width: 40,
                  ),
                ],
              ),
            ),
            ListView(
              children: [
                SizedBox(
                  height: 328,
                ),
                Container(
                  // width: MediaQuery.of(context).size.width,
                  height: 35,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Kuretakeso Hott",
                        style: TextStyle(fontSize: 22),
                      ),
                      Text("\$52 / month"),
                      SizedBox(
                        height: 20,
                      ),
                      Text("Main Facilities"),
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                "assets/dtlicon1.png",
                                width: 32,
                                height: 32,
                              ),
                              SizedBox(height: 8),
                              Text("2 kitchen")
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                "assets/dtlicon2.png",
                                width: 32,
                                height: 32,
                              ),
                              SizedBox(height: 8),
                              Text("3 bedroom")
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                "assets/dtlicon3.png",
                                width: 32,
                                height: 32,
                              ),
                              SizedBox(height: 8),
                              Text("3 big lemari"),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        height: 88,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            DetailCard(
                              detail:
                                  Detail(id: 1, gambar: "assets/balado.png"),
                            ),
                            SizedBox(
                              width: 18,
                            ),
                            DetailCard(
                              detail:
                                  Detail(id: 1, gambar: "assets/balado.png"),
                            ),
                            SizedBox(
                              width: 18,
                            ),
                            DetailCard(
                              detail:
                                  Detail(id: 1, gambar: "assets/balado.png"),
                            ),
                            SizedBox(
                              width: 18,
                            ),
                            DetailCard(
                              detail:
                                  Detail(id: 1, gambar: "assets/balado.png"),
                            ),
                            SizedBox(
                              width: 18,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Location",
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text("Jln. Kappan Sukses No. 20"),
                      Text("Palembang"),
                      SizedBox(
                        height: 40,
                      ),
                      Center(
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text("Book Now"),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
