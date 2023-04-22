import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class ExpandableTextController extends GetxController {
  RxBool hiddenText = true.obs;

  void toggleHiddenText() {
    hiddenText.value = !hiddenText.value;
  }
}
