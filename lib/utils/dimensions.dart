import 'package:get/get.dart';

class Dimensions {
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

  static double pageView = screenHeight / 2.64; // 2.12 all that is =320
  static double pageViewContainer =
      screenHeight / 3.84; // 3.12 all that is =220
  static double pageViewTextContainer =
      screenHeight / 7.03; // 5.70 all that is =120

//dynamic height padding and margin
  static double height10 = screenHeight / 84.4; // 68.34
  static double height15 = screenHeight / 56.27; // 45.56
  static double height20 = screenHeight / 42.2; // 34.17
  static double height30 = screenHeight / 28.13; // 22.78
  static double height45 = screenHeight / 18.76; // 15.19

//dynamic width padding and margin
  static double width10 = screenHeight / 84.4; // 84.4
  static double width15 = screenHeight / 56.27; // 56.27
  static double width20 = screenHeight / 42.2; // 42.2
  static double width30 = screenHeight / 28.13; // 28.13
  static double width45 = screenHeight / 18.76; // 18.76

//dynamic font size
  static double font20 = screenHeight / 42.2; // 34.17
  static double font26 = screenHeight / 26.29;

//radius
  static double radius15 = screenHeight / 56.27; // 45.56
  static double radius20 = screenHeight / 42.2; // 34.17
  static double radius30 = screenHeight / 28.13; // 22.78

//icon size
  static double iconSize24 = screenHeight / 35.17; // 28.48
  static double iconSize16 = screenHeight / 42.71;

//list view size
  static double listViewImgSize = screenWidth / 2.5; //3:14:00 stamp
  static double listViewTextContSize = screenWidth / 3.9; //3:14:00 stamp

//in-demand food
  static double inDemandFoodImgSize = screenHeight / 1.95;

//bottom height
  static double bottomHeightBar = screenHeight / 5.7;
}
