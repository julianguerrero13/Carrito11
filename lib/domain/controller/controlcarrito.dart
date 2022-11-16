import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class ControlCarrito extends GetxController {
  var numSaco = 0.obs;
  var numchaqueta = 0.obs;

  get total => numSaco.value;

  void aumentar() {
    numSaco.value = numSaco.value + 1;
  }

  void disminuir() {
    numSaco.value = numSaco.value - 1;
  }
}
