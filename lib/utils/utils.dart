import 'package:flutter/material.dart';
import 'package:insurego/utils/colors.dart';

import 'package:insurego/widgets/category.dart';

showSnackBar(BuildContext context, String text)
{
  return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(text),
      )
  );
}
class Utils{
  static List<Category> getMockedCategories(){
    return [
      Category(
      color: Colors.pink,
        name: "Mutual Funds",
        imgName:"lib/assets/images/mutual.jpg" ,
        subCategories: []
      ),
      Category(
          color: Colors.pink,
          name: "Health Insurance",
          imgName:"lib/assets/images/health.jpg" ,
          subCategories: []
      ),
      Category(
          color: Colors.pink,
          name: "Life Insurance",
          imgName:"lib/assets/images/life.jpg" ,
          subCategories: []
      ),

    ];

    }
  }
