import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get/state_manager.dart';

class CharacterController extends GetxController {
  RxString character = "Ryo".obs;
  RxInt index = 0.obs;

  void ryo() {
    character.value = "Ryo";
    index.value = 0;
    update();
  }

  void bocchi() {
    character.value = "Bocchi";
    index.value = 1;
    update();
  }

  void nijika() {
    character.value = "Nijika";
    index.value = 3;
    update();
  }

  void kita() {
    character.value = "Kita";
    index.value = 2;
    update();
  }
}
