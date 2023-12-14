import 'package:flutter/material.dart';

class GreySpace extends StatelessWidget {
  const GreySpace({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: 3,
      width: size.width,
      color: Colors.grey[200],
    );
  }
}
