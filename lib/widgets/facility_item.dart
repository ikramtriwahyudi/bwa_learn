import 'package:flutter/material.dart';

class Facility_item extends StatefulWidget {
  final String name;
  final String imageUrl;
  final int number;

  Facility_item(
      {required this.imageUrl, required this.name, required this.number});

  @override
  State<Facility_item> createState() => _Facility_itemState();
}

class _Facility_itemState extends State<Facility_item> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          widget.imageUrl,
          width: 32,
        ),
        SizedBox(height: 8),
        Text.rich(
          TextSpan(
            text: "${widget.number}",
            style: TextStyle(
              fontSize: 16,
              color: Color(0xff5843BE),
            ),
            children: [
              TextSpan(
                text: "${widget.name}",
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xff7A7E86),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
