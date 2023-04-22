import 'package:ctrleat/data/repository/indemand_product_repo.dart';
import 'package:get/get.dart';

class InDemandProductController extends GetxController {
  final InDemandProductRepo inDemandProductRepo;
  InDemandProductController({required this.inDemandProductRepo});
  List<dynamic> _indemandProductList = [];
  List<dynamic> get indemandProductList => _indemandProductList;

  Future<void> getInDemandProductList() async {
    Response response = await inDemandProductRepo.getInDemandProductList();
    if (response.statusCode == 200) {
      print("got products");
      _indemandProductList = [];
      //_indemandProductList.addAll();
      print(_indemandProductList);
      update();
    } else {}
  }
}
