import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:islami/core/cache_helper.dart';
import 'package:islami/screens/Home/Home_Screen.dart';
import 'package:islami/core/colors.dart';
import 'package:islami/core/styles.dart';

class IntroScreen extends StatelessWidget {
  static const String routeName="introScreen";
  IntroScreen({super.key});
var listPagesViewModel=[
  PageViewModel(
      titleWidget: Text("Welcome To Islami App",
        style: Styles.style1
      ),
    body: "",
    image: Image.asset("assets/images/intro1.png")
  ),
  PageViewModel(
    titleWidget: Text("Welcome To Islami",
        style: Styles.style1
    ),
      bodyWidget: Text("We Are Very Excited To Have You In Our Community",
          textAlign: TextAlign.center,
          style: Styles.style2
      ),
      image: Image.asset("assets/images/intro2.png")

  ), PageViewModel(
      titleWidget: Text("Reading the Quran",
          style:Styles.style1
      ),
      bodyWidget: Text("Read, and your Lord is the Most Generous",
          textAlign: TextAlign.center,
          style:  Styles.style2
      ),
      image: Image.asset("assets/images/intro3.png")

  ), PageViewModel(
      titleWidget: Text("Bearish",
        style: Styles.style1
      ),
      bodyWidget: Text("Praise the name of your Lord, the Most High",
          textAlign: TextAlign.center,
          style:  Styles.style2
      ),
      image: Image.asset("assets/images/intro4.png")

  ), PageViewModel(
      titleWidget: Text("Holy Quran Radio",
        style: Styles.style1
      ),
      bodyWidget: Text("You can listen to the Holy Quran Radio through the application for free and easily",
          textAlign: TextAlign.center,
          style:  Styles.style2
      ),
      image: Image.asset("assets/images/intro5.png")

  )
];
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      globalBackgroundColor: Color(0xFF202020),
      globalHeader:Image.asset("assets/images/top.png") ,
      bodyPadding: EdgeInsets.only(top: 228),
      pages: listPagesViewModel,
      showNextButton: false,
      done: Text("Done",
        style: Styles.style2,
      ),

      dotsDecorator:DotsDecorator(
        color: Color(0xFF707070),
        activeColor: AppColors.primary,
          activeSize: Size(13, 10),
          activeShape: OutlineInputBorder(borderRadius: BorderRadius.circular(12))
      ) ,
      showSkipButton: true,
      skip: Text("Skip",
      style: Styles.style2,),
      showDoneButton:true ,
      showBackButton: true,
      back: Icon(Icons.arrow_back_ios,color:AppColors.primary ,),
      onSkip: ()async{
        await CacheHelper.saveBool(true);
        Navigator.pushNamed(context, HomeScreen.routeName);
      },
      onDone: () async{
        await CacheHelper.saveBool(true);
        Navigator.pushNamed(context, HomeScreen.routeName);
      },
    );
  }
}
