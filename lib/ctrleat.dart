import 'package:ctrleat/pages/food/indemand_food_detail.dart';
import 'package:ctrleat/pages/food/recommended_food_detail.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/indemand_product_controller.dart';
import 'pages/home/main_food_page.dart';
import 'package:ctrleat/helper/dependencies.dart' as dep;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.find<InDemandProductController>().getInDemandProductList();
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CTRL+Eat',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RecommendedFoodDetail(),
    );
  }
}
