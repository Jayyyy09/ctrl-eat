import 'package:flutter/material.dart';

import 'package:ctrleat/widgets/big_text.dart';
import 'package:ctrleat/widgets/small_text.dart';

import 'food_page_body.dart';
import 'color.dart';
import '/utils/dimensions.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({super.key});

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    //print("current width is ${MediaQuery.of(context).size.width}");
    return Scaffold(
      body: Column(
        children: [
          Container(
              child: Container(
            margin: EdgeInsets.only(top: 45, bottom: 15),
            padding: EdgeInsets.only(
                left: Dimensions.width20, right: Dimensions.width20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    BigText(
                      text: "CTRL + Eat",
                      color: AppColors.orange,
                    ),
                    SmallText(text: "GJC Digital Canteen")
                  ],
                ),
                Center(
                  child: Container(
                    width: Dimensions.height45,
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
