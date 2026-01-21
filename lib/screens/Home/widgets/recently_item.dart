import 'package:flutter/material.dart';
import 'package:islami/core/colors.dart';
import 'package:islami/models/sura_model.dart';

class RecentlyItem extends StatelessWidget {
  SuraModel model;
   RecentlyItem({super.key,required this.model});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8,vertical: 16),
      width: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: AppColors.primary
      ),
      child: Row(children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(model.nameEN,
              maxLines: 1,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black
              ),
              ),
              SizedBox(height: 8,),
              Text(model.name,
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color:Colors.black
                ),
              ),
              SizedBox(height: 8,),

              Text("${model.versesCount} Verses",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),
              ),
            ],
          ),
        ),
        Expanded(child:
        Image.asset(
            "assets/images/most_recent.png"))
      ],),
    );
  }
}
