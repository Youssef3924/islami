import 'package:flutter/material.dart';
import 'package:islami/models/sura_model.dart';

class SuraItem extends StatelessWidget {
  SuraModel model;
   SuraItem({super.key,required this.model
   });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      trailing:Text(
        model.name,
        style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold),),
      leading:  Stack(
               alignment: Alignment.center,
              children: [
               Image.asset("assets/images/sura_number.png"
                   ,width: 52
                   ,height: 52,),
                Text("${model.suraIndex}"
              ,style: TextStyle(fontSize: 14,color: Colors.white,fontWeight: FontWeight.bold),)
               ],
            ),
      subtitle: Text("${model.versesCount} verses",
        style: TextStyle(
            fontSize: 14,color: Colors.white,
          fontWeight: FontWeight.bold),),
      title:  Text(
        model.nameEN,
        style: TextStyle(
          fontSize: 20,
          color: Colors.white,
          fontWeight: FontWeight.bold),),
    );

  }
}
