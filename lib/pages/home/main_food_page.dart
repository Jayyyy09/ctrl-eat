import 'package:flutter/material.dart';

import '/pages/home/food_page_body.dart';
import 'package:ctrleat/widgets/big_text.dart';
import 'package:ctrleat/widgets/small_text.dart';
import '/utils/dimensions.dart';
import '/pages/home/color.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({required Key key}) : super(key: key);

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
          //showing the header
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
                        SmallText(text: "GJC Digital Canteen"),
                        Icon(Icons.arrow_drop_down_rounded)
                      ],
                    )
                  ],
                ),
                Center(
                  child: Container(
                    width: Dimensions.width45,
                    height: Dimensions.height45,
                    child: Icon(Icons.search,
                        color: Colors.white, size: Dimensions.iconSize24),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius15),
                      color: Color.fromARGB(255, 15, 68, 0),
                    ),
                  ),
                ),
              ],
            ),
          )),
          //showing the body
          Expanded(
              child: SingleChildScrollView(
                  child: FoodPageBody())) //singlechildscrollview
        ],
      ), //column
    ); //scaffold
  }
}
