import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class ControlCarrito extends GetxController {
  var numSaco = 0.obs;
  var numchaqueta = 0.obs;
  var sumatoriaTT = 0.obs;
  var VTchaqueta = 0.obs;

  get totalSaco => numSaco.value;
  get totalChaqueta => numchaqueta.value;

  

  void aumentarS() {
    numSaco.value = numSaco.value + 1;
  }

  void disminuirS() {
    if (numSaco.value!=0){
    numSaco.value = numSaco.value - 1;}
    else{
      numSaco.value = 0;
    }
  }

  void aumentarC(){
    numchaqueta.value = numchaqueta.value + 1;
  }
 void disminuirC() {
    if (numchaqueta.value!=0){
    numchaqueta.value = numchaqueta.value - 1;}
    else{
      numchaqueta.value = 0;
    }
  }

  void valorTotal (){
    VTchaqueta = totalChaqueta* 230000;

  }
}