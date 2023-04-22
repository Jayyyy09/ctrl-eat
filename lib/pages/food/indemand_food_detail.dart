import 'package:ctrleat/widgets/app_column.dart';
import 'package:ctrleat/widgets/app_icon.dart';
import 'package:flutter/material.dart';
import '../../utils/dimensions.dart';

import '../../widgets/big_text.dart';
import '../../widgets/Expandable_text_widget.dart';
import '../home/color.dart';

class InDemandFoodDetail extends StatelessWidget {
  const InDemandFoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Stack(
        children: [
          //Background iamge
          Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: Dimensions.inDemandFoodImgSize,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/image/LOGO.png'),
                )),
              )),
          Positioned(
              left: Dimensions.width20,
              right: Dimensions.width20,
              child: Row(
                children: [],
              )),
          //Icon widgets
          Positioned(
              top: Dimensions.height45,
              left: Dimensions.width20,
              right: Dimensions.width20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppIcon(icon: Icons.arrow_back_ios),
                  AppIcon(icon: Icons.shopping_bag_outlined)
                ],
              )),
          //Introduction of Food
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top: Dimensions.inDemandFoodImgSize - 20,
              child: Container(
                  padding: EdgeInsets.only(
                      left: Dimensions.width20,
                      right: Dimensions.width20,
                      top: Dimensions.height20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(Dimensions.radius20),
                          topLeft: Radius.circular(Dimensions.radius20)),
                      color: Color.fromARGB(255, 255, 255, 255)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppColumn(
                        text: "DO-DONUTS",
                      ),
                      SizedBox(
                        height: Dimensions.height20,
                      ),
                      BigText(
                        text: "Introduce",
                        color: Color(0xFF000000),
                      ),
                      Expanded(
                          child: SingleChildScrollView(
                        child: ExpandedTextWidget(
                            text:
                                "A doughnut or donut (/doʊnət/) is a type of food made from leavened fried dough.It is popular in many countries and is prepared in various forms as a sweet snack that can be homemade or purchased in bakeries, supermarkets, food stalls, and franchised specialty vendors. Doughnut is the traditional spelling, while donut is the simplified version; the terms are used interchangeably. Doughnuts are usually deep fried from a flour dough, but other types of batters can also be used. Various toppings and flavors are used for different types, such as sugar, chocolate or maple glazing. Doughnuts may also include water, leavening, eggs, milk, sugar, oil, shortening, and natural or artificial flavors."),
                      ))
                    ],
                  )))
        ],
      ),
      bottomNavigationBar: Container(
        height: Dimensions.bottomHeightBar,
        padding: EdgeInsets.only(
            top: Dimensions.height30,
            bottom: Dimensions.height30,
            left: Dimensions.width30,
            right: Dimensions.width30),
        decoration: BoxDecoration(
            color: AppColors.lightgreen, //bottom color
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(Dimensions.radius20 * 2),
                topRight: Radius.circular(Dimensions.radius20 * 2))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(
                  top: Dimensions.height15,
                  bottom: Dimensions.height15,
                  left: Dimensions.width15,
                  right: Dimensions.width15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius20),
                  color: Colors.white),
              child: Row(
                children: [
                  Icon(
                    Icons.remove,
                    color: AppColors.darkgreen,
                  ),
                  SizedBox(
                    width: Dimensions.width10 / 2,
                  ),
                  BigText(
                    text: "0",
                    color: AppColors.black,
                    maxLines: 1,
                  ),
                  SizedBox(
                    width: Dimensions.width10 / 2,
                  ),
                  Icon(
                    Icons.add,
                    color: AppColors.darkgreen,
                  )
                ],
              ),
            ),
            Container(
                padding: EdgeInsets.only(
                    top: Dimensions.height15,
                    bottom: Dimensions.height15,
                    left: Dimensions.width15,
                    right: Dimensions.width15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius20),
                    color: AppColors.darkgreen),
                child: BigText(
                  text: "₱ 50 | Add to bag ",
                  color: Colors.amber,
                  maxLines: 1,
                ))
          ],
        ),
      ),
    );
  }
}
