import 'package:flutter/cupertino.dart';
import 'package:flutter_project/helper/ApiBaseHepler.dart';
import 'package:flutter_project/helper/errors.dart';
import 'package:flutter_project/helper/global_variable.dart';
import 'package:flutter_project/helper/urls.dart';
import 'package:get/get.dart';

class RegisterViewModel extends GetxController {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController investmentcontroller = TextEditingController();

  void register() async {
    Map<String, dynamic> map = {
      "name": namecontroller.text.toString(),
      "email": emailcontroller.text.toString(),
      "password": passwordcontroller.text.toString(),
      "investment": investmentcontroller.text.toString(),
      "socialite_method": "email",
    };
    print(map);
    var res = await ApiBaseHelper().postMethod(url: Urls.register, body: map);
    if (res["success"] == true) {
      print("ok");
      GlobalVariables.token = res["token"];
    } else {
      Errors.generalApiError.toString();
    }
  }
}
