
import 'package:get/get.dart';



class AuthController extends GetxController {

  bool isVisiblity = false;
  bool isCheckBox = false;
  void Visiblity(){
    isVisiblity = !isVisiblity;
    update();
  }

  void checkBox(){
    isCheckBox = !isCheckBox;
    update();
  }
}