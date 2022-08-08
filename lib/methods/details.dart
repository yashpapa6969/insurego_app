import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:insurego/methods/cestom_header.dart';
import 'package:insurego/methods/data.dart';
class DetailPage extends StatelessWidget {
   DetailPage({required this.animal});
   AnimalInfo animal;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title:  Text(animal.name.toString(),
              style: TextStyle(color:Colors.black,fontSize: 30),),
            centerTitle: true,
            elevation: 0,
            backgroundColor: animal.color,


          ),
          body: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10),
                height: 300,

                decoration: BoxDecoration(
                  color: animal.color,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  )
                ),
                child: GestureDetector(
                  child: Center(
                  child: Hero(
                    tag: animal.iconImage.toString(),
                    child: Image(
                      image: AssetImage(animal.iconImage.toString()),
                    )
                  ),
                  ),
                  onTap: (){
                    Get.back();
                  },
                ),
              ),
              Container(
                height: 300,
                color: Colors.white,
                child: SingleChildScrollView(
                  padding: EdgeInsets.all(20),
                  child: Center(
                    child: Column(mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Header(text: animal.name.toString(),),
                        SubHeader(text: animal.paragraph.toString()),
                        SizedBox(height: 10,),
                        Header(text: "Level Of Risk"),
                        SubHeader(text: animal.lifespan.toString()),
                        SizedBox(height: 10,),
                        Header(text: "Example"),
                        SubHeader(text: animal.speed.toString()),
                        SizedBox(height: 10,),

                      ],

                ),
              ),
                )
              )

            ],
          )
          ),
          );

  }
}
