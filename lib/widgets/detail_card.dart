import 'package:flutter/material.dart';
import 'package:bwa_learn/models/detail.dart';

class DetailCard extends StatelessWidget {
  final Detail detail;

  const DetailCard({Key? key, required this.detail}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.asset(detail.gambar),
    );
  }
}
