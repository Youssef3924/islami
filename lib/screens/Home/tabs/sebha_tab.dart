import 'dart:math';
import 'package:flutter/material.dart';

class Sebha extends StatefulWidget {
   Sebha({super.key});

  @override
  State<Sebha> createState() => _SebhaState();
}

class _SebhaState extends State<Sebha>  with SingleTickerProviderStateMixin{
  late AnimationController _controller;
  @override
  int num=0;
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );
  }
  void rotateImage() {
    _controller.forward(from: 0);
    num++;
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage("assets/images/sebha_pg.png"))
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 200.0),
        child: Column(
          children: [
          Text("سَبِّحِ اسْمَ رَبِّكَ الأعلى ",
          style: TextStyle(fontSize: 36,
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),
          ),
            Stack(
              alignment: Alignment.center,
              children: [
                InkWell(
                    onTap: rotateImage,
                    child:AnimatedBuilder(
                      animation: _controller,
                      child: Image.asset(
                        'assets/images/sebha_body.png',
                        width: double.infinity,
                      ),
                      builder: (context, child) {
                        return Transform.rotate(
                          angle: _controller.value * 2 * pi,
                          child: child,
                        );
                      },
                    ),
                ),
                Column(
                  children: [
                    Text("سبحان الله",
                      style: TextStyle(fontSize: 36,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),
                    ),

                    Text("$num",
                      style: TextStyle(fontSize: 36,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),
                    )
                  ],
                ),

              ],
            )
        ],),
      ),
    );
  }
}
