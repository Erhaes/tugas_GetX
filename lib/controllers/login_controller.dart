import 'package:get/get.dart';

class LoginController extends GetxController {
  var isLogged = false.obs;

  void login(String username, String password){
    if (username == "H1D022068" && password == "12345") {
      isLogged.value = true;
      Get.offAllNamed('/home');
    }else{
      Get.snackbar('Error', 'username atau password salah');
    }
  }
}