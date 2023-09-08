import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/screens/register/register_viewmodel.dart';
import 'package:flutter_project/widgets/custom_button.dart';
import 'package:flutter_project/widgets/custom_textformfield.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';

class RegisterView extends StatelessWidget {
  RegisterView({super.key});
  final RegisterViewModel viewModel = Get.put(RegisterViewModel());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 170, 212, 233),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 30,
              width: double.infinity,
            ),
            const CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage('images/loginproject.jpg')),
            const Text("Sign Up",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold)),
            const SizedBox(height: 30),
            Custom_Textformfield(
              controller: viewModel.namecontroller,
              labelText: "Name",
            ),
            const SizedBox(height: 10),
            Custom_Textformfield(
              controller: viewModel.emailcontroller,
              labelText: "Email",
            ),
            const SizedBox(height: 10),
            Custom_Textformfield(
              controller: viewModel.passwordcontroller,
              labelText: "Password",
            ),
            const SizedBox(height: 10),
            Custom_Textformfield(
              controller: viewModel.investmentcontroller,
              labelText: "Investment",
            ),
            const SizedBox(height: 20),
            CustomButton(
              onPress: () {
                viewModel.register();
              },
              text: "Sign Up",
              textColor: Colors.white,
              btnColor: Color(0xff0ffFF7D0D),
            )
          ],
        ),
      ),
    );
  }
}
