import 'package:ctrleat/data/api/api_client.dart';
import 'package:get/get.dart';

class InDemandProductRepo extends GetxService {
  final ApiClient apiClient;
  InDemandProductRepo({required this.apiClient});

  Future<Response> getInDemandProductList() async {
    return await apiClient
        .getData("https://net950.wordpress.com/api/product/list");
  }
}
