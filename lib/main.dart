import 'package:ctrleat/pages/food/indemand_food_detail.dart';
import 'package:ctrleat/pages/home/food_page_body.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller/indemand_product_controller.dart';
import 'pages/home/main_food_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application
  @override
  Widget build(BuildContext context) {
    Get.find<InDemandProductController>().getInDemandProductList();
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FoodPageBody(),
    );
  }
}
