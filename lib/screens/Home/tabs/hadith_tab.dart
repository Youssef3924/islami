import 'package:flutter/material.dart';

class hadith extends StatelessWidget {
  const hadith({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage("assets/images/hadith_pg.png"))
      ),
    );
  }
}
