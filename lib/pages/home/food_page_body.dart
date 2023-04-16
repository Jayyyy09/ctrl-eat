import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:vector_math/vector_math.dart' as vector_math;
import 'package:vector_math/vector_math_64.dart' as vector_math_64;

import '/pages/home/color.dart';
import '/utils/dimensions.dart';
import '/widgets/big_text.dart';
import '/widgets/icon_and_text_widget.dart';
import '/widgets/small_text.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({Key? key}) : super(key: key);

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);
  double _currPageValue = 0.0;
  final double _scaleFactor = 0.8;
  final double _height = Dimensions.pageViewContainer;

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currPageValue = pageController.page ?? 0.0;
      });
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //slider section
          SizedBox(
            height: Dimensions.pageView,
            child: PageView.builder(
              controller: pageController,
              itemCount: 5,
              itemBuilder: (context, position) {
                return _buildPageItem(position);
              },
            ),
          ),
          //dots
          SizedBox(
            height: 30,
            child: DotsIndicator(
              dotsCount: 5,
              position: _currPageValue,
              decorator: DotsDecorator(
                activeColor: AppColors.darkgreen,
                size: const Size.square(9.0),
                activeSize: const Size(18.0, 9.0),
                activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
            ),
          ),
          //Popular Set
          SizedBox(height: Dimensions.height30),
          Padding(
            padding: EdgeInsets.only(left: Dimensions.width30),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                BigText(text: 'In-Demand'),
                SizedBox(width: Dimensions.width10),
                Container(
                  margin: const EdgeInsets.only(bottom: 3),
                  child: BigText(text: '.', color: Colors.black26),
                ),
                SizedBox(width: Dimensions.width10),
                Container(
                  margin: const EdgeInsets.only(bottom: 2),
                  child: SmallText(
                    text: 'Food pairing',
                    color: Colors.black26,
                    size: 10,
                    height: 15,
                  ),
                )
              ],
            ),
          ),
          //list of food and images
          Expanded(
              child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Container(
                        margin: EdgeInsets.only(
                          left: Dimensions.width20,
                          right: Dimensions.width20,
                          bottom: Dimensions.height10,
                        ),
                        child: Row(
                          children: [
                            // image section
                            Container(
                                width: Dimensions.listViewImgSize,
                                height: Dimensions.listViewImgSize,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        Dimensions.radius20),
                                    color: Colors.white38,
                                    image: const DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            "assets/images/LOGO.png") //AssetImage
                                        ) //DecorationImage
                                    ) //BoxDecoration
                                ), // Container
                            // text container
                            Expanded(
                              child: Container(
                                  height: Dimensions.listViewTextContSize,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topRight:
                                          Radius.circular(Dimensions.radius20),
                                      bottomRight:
                                          Radius.circular(Dimensions.radius20),
                                    ), //borderRadius.only
                                    color: Colors.white,
                                  ), //boxdecortaion
                                  child: Padding(
                                      padding: EdgeInsets.only(
                                          left: Dimensions.width10, //width10
                                          right: Dimensions.width10), //width10
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          BigText(
                                              text:
                                                  "Nutritious Fruit Meal in China"),
                                          SizedBox(
                                            height: Dimensions.height10,
                                          ),
                                          SmallText(
                                            text:
                                                "With chinese characteristics",
                                            color: Colors.black87,
                                            height: Dimensions.height10,
                                            size: null,
                                          ),
                                          SizedBox(
                                            height: Dimensions.height10,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              IconAndTextWidget(
                                                  icon: Icons.circle_sharp,
                                                  text: "Normal",
                                                  iconColor: AppColors.black),
                                            ],
                                          )
                                        ],
                                      ))),
                            )
                          ],
                        ));
                  }))
        ],
      ),
    );
  }

  Widget _buildPageItem(int index) {
    Matrix4 matrix = Matrix4.identity();
    if (index == _currPageValue.floor()) {
      var currScale = 1 - (_currPageValue - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currPageValue.floor() + 1) {
      var currScale =
          _scaleFactor + (_currPageValue - index + 1) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currPageValue.floor() - 1) {
      var currScale = 1 - (_currPageValue - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else {
      var currScale = 0.8;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, _height * (1 - _scaleFactor) / 2, 1);
    }
    return Transform(
      transform: matrix,
      child: Stack(children: [
        Container(
          height: Dimensions.pageViewContainer,
          margin: EdgeInsets.only(
              left: Dimensions.width10, right: Dimensions.width10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Dimensions.radius30),
            color: index.isEven
                ? Color.fromARGB(255, 209, 209, 55)
                : Color.fromARGB(255, 4, 146, 27),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/licensed-image.jpg"),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: Dimensions.pageViewTextContainer,
            margin: EdgeInsets.only(
                left: Dimensions.width30,
                right: Dimensions.width30,
                bottom: Dimensions.height30),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimensions.radius30),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  blurRadius: 5,
                  offset: Offset(0, 5), // changes position of shadow
                ), //boxshadow
              ],
            ), //boxdecoration
            child: Container(
              padding: EdgeInsets.only(
                  top: Dimensions.height15,
                  left: Dimensions.width15,
                  right: Dimensions.width15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BigText(text: "DO-DONUTS"),
                  SizedBox(
                    height: Dimensions.height10,
                  ),
                  Row(children: [
                    Wrap(
                      children: List.generate(
                        1,
                        (index) => Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: AppColors.brightgreen,
                              size: 10,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            SmallText(text: "4"),
                            SizedBox(
                              width: 5,
                            ),
                            SmallText(text: "0"),
                            SizedBox(
                              width: 5,
                            ),
                            SmallText(text: "comments"),
                          ],
                        ),
                      ),
                    )
                  ]),
                  SizedBox(
                    height: Dimensions.height20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconAndTextWidget(
                          icon: Icons.circle_sharp,
                          text: "Normal",
                          iconColor: AppColors.black),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
