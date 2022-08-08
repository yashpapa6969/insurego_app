import 'package:flutter/material.dart';
import 'package:insurego/methods/data.dart';
import 'package:insurego/methods/animal_card.dart';
import 'package:get/get.dart';

import '../methods/details.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<AnimalInfo> animals = [];

  @override
  void initState(){
    animals = animallist;
    super.initState();
  }
  Widget build(BuildContext context) {
    return SafeArea(
      child:
      Scaffold(

        appBar: AppBar(
            title: const Text("Products"),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.white,
          leading: Icon(Icons.filter_list , color: Colors.amber,)
          ,
          actions: <Widget>[
          ],
        ),
        body: ListView.builder(
          shrinkWrap: true,
            padding: EdgeInsets.all(5),
            itemCount: animals.length,
            itemBuilder: (context , index) =>
                AnimalCard(
                    animal: animals[index],
                  onPressed: (){

                      Get.to(DetailPage(animal: animals[index],)
                      );
                  },

                )
        ),

          ),
        );


  }
}
