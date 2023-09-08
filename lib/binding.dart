import 'package:flutter_project/screens/login/login_viewmodel.dart';
import 'package:get/get.dart';

class InitialBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginViewModel(), fenix: true);
  }
}
