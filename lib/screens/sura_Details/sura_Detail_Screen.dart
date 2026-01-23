import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/core/colors.dart';
import 'package:islami/core/styles.dart';
import 'package:islami/models/sura_model.dart';

class SuraDetailScreen extends StatefulWidget {
  static const String routeName="SuraDetailsScreen";
   SuraDetailScreen({super.key});

  @override
  State<SuraDetailScreen> createState() => _SuraDetailScreenState();
}

class _SuraDetailScreenState extends State<SuraDetailScreen> {
   List<String> verses=[];

  @override
  Widget build(BuildContext context) {
    var model =ModalRoute.of(context)?.settings.arguments as SuraModel;
    if(verses.isEmpty){
      loadSuraFile(model.suraIndex);
    }
    return Scaffold(
      backgroundColor: AppColors.black,
    appBar:AppBar(
      backgroundColor: AppColors.black,
      centerTitle:true ,
      iconTheme: IconThemeData(
        color: AppColors.primary
      ),
      title: Text(model.nameEN,
      style: Styles.style1!
      ,
      ),
    ) ,
      body: SizedBox(
        width: double.infinity,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
          Image.asset("assets/images/Soura_Details.png",
            fit: BoxFit.cover,
          ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 35.0),
                  child: Text(model.name,
                  style: Styles.style1,),
                ),
                SizedBox(height: 40,),
                Expanded(
                  child: ListView.builder(
                    itemCount: verses.length,
                    itemBuilder: (context, index) =>
                        Center(
                          child: Text(verses[index],
                            textAlign: TextAlign.center,
                            style: Styles.style1 ,
                          ),
                        ),
                  ),
                ),
                SizedBox(height: 100,)
              ],
            ),

        ],),
      ),
    );
  }

 Future<void> loadSuraFile (int index) async
  {
    String suraFile =await rootBundle.loadString(
        "assets/files/$index.txt");
    List<String>suraLines=suraFile.split("\n");
    verses=suraLines;
    setState(() {

    });
  }
}
