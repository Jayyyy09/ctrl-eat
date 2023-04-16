import 'package:flutter/material.dart';

import 'package:ctrleat/widgets/big_text.dart';
import 'package:ctrleat/widgets/small_text.dart';

import '../pages/home/food_page_body.dart';
import '/pages/home/color.dart';
import '/utils/dimensions.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({super.key});

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    //print("current height is ${MediaQuery.of(context).size.height}");
    return Scaffold(
      body: Column(
        children: [
          Container(
              child: Container(
            margin: EdgeInsets.only(
                top: Dimensions.height45, bottom: Dimensions.height15),
            padding: EdgeInsets.only(
                left: Dimensions.width20, right: Dimensions.width20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    BigText(text: "CTRL + Eat", color: AppColors.orange),
                    Row(
                      children: [
                        SmallText(
                            text: "GJC Digital Canteen", color: Colors.black, size: 10, height: 15,),                       
                            Icon(Icons.arrow_drop_down_rounded)
                      ],
                    )
                  ],
                ),
                Center(
                  child: Container(
                    width: Dimensions.width45,
                    height: Dimensions.height45,
                    child: Icon(Icons.search, color: Colors.white),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius15),
                      color: Color.fromARGB(255, 15, 68, 0),
                    ),
                  ),
                ),
              ],
            ),
          )),
          FoodPageBody()
        ],
      ),
    );
  }
}
