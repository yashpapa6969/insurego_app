import 'package:flutter/material.dart';
import 'package:insurego/methods/data.dart';

class AnimalCard extends StatelessWidget {
  AnimalInfo animal;
   AnimalCard({required this.animal,this.onPressed});

   final onPressed;

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: onPressed,
      child: Container(

        padding: const EdgeInsets.all(10.0),
        width: double.infinity,
        height: 230,
        child: Stack(
          children: <Widget>[
            Positioned(
              left: 50,
              child: Container(
                decoration: BoxDecoration(
                    color: animal.color,
                    borderRadius: BorderRadius.circular(10.0)
                ),
                constraints: const BoxConstraints(maxHeight: 330,maxWidth: 200),
              ),
            ),
             Positioned(
              top: 25,
              child: Hero(
                tag: animal.name.toString(),
                transitionOnUserGestures: true,
                child: Image(
                  image:  AssetImage(animal.iconImage.toString()),
                  width: 150,
                  height: 150,
                ),
              ),
            ),
            const Positioned(
              top: 25,
              left: 160,

              child: Text('',
                style:  TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                ) ,
              ),

            ),
            Positioned(
              top: 10,
              left: 160,

              child: Container(

                width: 200,
                height: 200,
                child: Opacity(opacity: 0.8,
                  child: Center(
                    child: Text(
                      '',

                    ),
                  ),
                ),
              ),


            ),


          ],
        ),
      ),
    );



  }
}


