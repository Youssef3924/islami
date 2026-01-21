import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:islami/core/colors.dart';
import 'package:islami/screens/Home/tabs/hadith_tab.dart';
import 'package:islami/screens/Home/tabs/quran_tab.dart';
import 'package:islami/screens/Home/tabs/sebha_tab.dart';
import 'package:islami/screens/Home/tabs/radio_tab.dart';
import 'package:islami/screens/Home/tabs/time_tab.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName="Homescreen";
   HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
int selectedTab=0;
List<Widget> tabs=[
 Quran(),
  hadith(),
  Sebha(),
  Radios(),
  Time()
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: true,
          backgroundColor: AppColors.primary,
          showUnselectedLabels: false,
          selectedItemColor: Colors.white,
         unselectedItemColor: Colors.black,
         type: BottomNavigationBarType.shifting,
         currentIndex: selectedTab,
         onTap: (value){
            selectedTab=value;
            setState(() {
            });
         },
          items: [
        BottomNavigationBarItem(
            backgroundColor: AppColors.primary,
            icon: selectedTab==0
          ?getContainer("ic_quran")
                :ImageIcon(AssetImage("assets/images/ic_quran.png"))
            ,label: "Quran"),
        BottomNavigationBarItem(
            backgroundColor: AppColors.primary,
            icon: selectedTab==1
                ?getContainer("ic_hadeth"):
            ImageIcon(AssetImage("assets/images/ic_hadeth.png")),label: "Hadeth"),
        BottomNavigationBarItem(
            backgroundColor: AppColors.primary,
            icon:selectedTab==2
                ?getContainer("ic_sebha"):
            ImageIcon(AssetImage("assets/images/ic_sebha.png")),label: "Sebha"),
        BottomNavigationBarItem(
            backgroundColor: AppColors.primary,
            icon:selectedTab==3
                ?getContainer("ic_radio"):
            ImageIcon(AssetImage("assets/images/ic_radio.png")),label: "Radio"),
        BottomNavigationBarItem(
            backgroundColor: AppColors.primary,
            icon:selectedTab==4
                ?getContainer("ic_time"):
            ImageIcon(AssetImage("assets/images/ic_time.png")),label: "Time"),
      ]),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          tabs[selectedTab],
          Image.asset("assets/images/top.png")
        ],
      ),
    );
  }
  Widget getContainer(String image){
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 12,vertical: 2),
        decoration: BoxDecoration(
            color: Colors.black12,
            borderRadius: BorderRadius.circular(24)
        ),
        child: ImageIcon(AssetImage("assets/images/$image.png")));
  }
}
