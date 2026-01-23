import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:islami/firebase_options.dart';
import 'package:islami/screens/sura_Details/sura_Detail_Screen.dart';
import 'introduction_screen.dart';
import 'screens/Home/Home_Screen.dart';
void main() async{
  runApp(const MyApp());
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: IntroScreen.routeName,
    routes: {
      IntroScreen.routeName:(context)=>IntroScreen(),
      HomeScreen.routeName:(context)=>HomeScreen(),
      SuraDetailScreen.routeName:(context)=>SuraDetailScreen()
    },

  );
  }
}