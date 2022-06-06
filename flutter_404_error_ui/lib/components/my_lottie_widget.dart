import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class MyLottie extends StatelessWidget {
  const MyLottie({
    Key? key,
    required this.size,
    required this.picNum,
  }) : super(key: key);

  final Size size;
  final String picNum;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      width: size.width,
      height: size.height / 2.6,
      child: Lottie.asset('assets/lottie/$picNum.json', animate: true),
    );
  }
}