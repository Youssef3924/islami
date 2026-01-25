import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/models/hadith_model.dart';

class hadith extends StatefulWidget {
   hadith({super.key});

  @override
  State<hadith> createState() => _hadithState();
}

class _hadithState extends State<hadith> {
   List<HadithModel> allAhadithData=[];
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadAllHadithFile();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage("assets/images/hadith_pg.png"))
      ),
      child:CarouselSlider(
        options: CarouselOptions(height: double.infinity),
        items: allAhadithData.map((model) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                  padding: EdgeInsets.only(top: 150),
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                    Image.asset("assets/images/hadith_card.png"),
                    Padding(
                      padding: const EdgeInsets.only(top: 40.0),
                      child: Column(
                        children: [
                          Text(model.title,
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold
                          ),
                          ),
                          Expanded(
                            child: ListView.builder(
                              itemCount: model.content.length,
                              itemBuilder:
                              (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: Text(
                                    model.content[index],
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                );
                              },

                            ),
                          )
                        ],
                      ),
                    )
                  ],)
              );
            },
          );
        }).toList(),
      )

    );
  }

   Future<void> loadAllHadithFile () async
   {
     for(int i=1;i<=50;i++)
     {
       String hadithFile = await rootBundle.loadString(
           "assets/files2/h$i.txt");
       List<String> hadithLines = hadithFile.split("\n");
       String title = hadithLines[0];
       hadithLines.removeAt(0);
       List<String> hadithContent = hadithLines;
       allAhadithData.add(HadithModel(title, hadithContent));
     }
     setState(() {

     });
   }
}
