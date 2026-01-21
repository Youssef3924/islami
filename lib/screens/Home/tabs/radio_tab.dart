import 'package:flutter/material.dart';

class Radios extends StatelessWidget {
  const Radios({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage("assets/images/radio_pg.png"))
      ),
    );
  }
}
