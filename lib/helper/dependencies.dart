import 'package:get/get.dart';
import '../controller/indemand_product_controller.dart';
import '../data/api/api_client.dart';
import '../data/repository/indemand_product_repo.dart';

Future<void> init() async {
  // api client
  Get.lazyPut(
      () => ApiClient(appBaseUrl: "https://net950.wordpress.com/")); // url uli

  // repos
  Get.lazyPut(() => InDemandProductRepo(apiClient: Get.find()));

  // controllers
  Get.lazyPut(() => InDemandProductController(inDemandProductRepo: Get.find()));
}
