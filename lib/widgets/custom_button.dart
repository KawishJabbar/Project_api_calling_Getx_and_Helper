// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.text,
      required this.textColor,
      required this.btnColor,
      this.onPress,
      this.icon});
  final String text;
  final Color btnColor;
  final Color textColor;
  final VoidCallback? onPress;
  final Icon? icon;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        decoration: BoxDecoration(
            color: btnColor, borderRadius: BorderRadius.circular(8)),
        height: 40,
        width: 335,
        child: Align(
            alignment: Alignment.center,
            child: Text(
              text,
              style: TextStyle(
                  color: textColor,
                  fontFamily: "Poppins",
                  fontSize: 16,
                  fontWeight: FontWeight.w700),
            )),
      ),
    );
  }
}

class CustomButton2 extends StatelessWidget {
  const CustomButton2(
      {super.key, this.icon, this.height, this.width, this.color, this.radius});
  final Icon? icon;
  final double? height;
  final double? width;
  final Color? color;
  final double? radius;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(15)),
        child: Center(child: icon));
  }
}
