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
              height: 350,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
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
                  width: MediaQuery.of(context).size.width,
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
                              Text("3 big lemari")
                            ],
                          ),
                        ],
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
