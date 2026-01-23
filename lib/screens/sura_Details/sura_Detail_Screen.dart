import 'package:flutter/material.dart';
import 'package:islami/core/colors.dart';
import 'package:islami/core/styles.dart';
import 'package:islami/models/sura_model.dart';

class SuraDetailScreen extends StatelessWidget {
  static const String routeName="SuraDetailsScreen";
  const SuraDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var model =ModalRoute.of(context)?.settings.arguments as SuraModel;
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
                    itemBuilder: (context, index) =>
                        Center(
                          child: Text("data",
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
}
