import 'package:flutter/material.dart';
class Header extends StatelessWidget {
   Header({required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
        text ,
      style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black38),
    );
  }
}
class SubHeader extends StatelessWidget {
  final String text;

  const SubHeader({required this.text});
  @override
  Widget build(BuildContext context) {
    return Text(text,
      style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.blueGrey),
    );

  }
}


