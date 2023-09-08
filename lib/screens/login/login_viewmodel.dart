//import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter_project/helper/ApiBaseHepler.dart';
import 'package:flutter_project/helper/errors.dart';
import 'package:flutter_project/helper/urls.dart';
import 'package:flutter_project/screens/register/register_view.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginViewModel extends GetxController {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  RxBool rememberMe = false.obs;
  // @override
  // void onInit() {
  //   super.onInit();
  //   // TODO: implement onInit
  //   signup(emailcontroller.text.toString(), passwordcontroller.text.toString());
  // }

  void signup2() async {
    Map<String, dynamic> map = {
      "email": emailcontroller.text.toString(),
      "password": passwordcontroller.text.toString()
    };
    var res = await ApiBaseHelper().postMethod(url: Urls.login, body: map);
    if (res["success"] == true) {
      print("ok");
      //Get.offAll(RegisterView());

      Get.to(() => RegisterView());
    } else {
      Errors.generalApiError.toString();
    }
  }

  void signup(String email, String password) async {
    try {
      final response = await http.post(
        Uri.parse('https://pulserealty.plandstudios.com/public/api/login'),
        body: {'email': email, 'password': password},
      );
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body.toString());
        print(data);
        print("login");
      } else {
        print("error");
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
