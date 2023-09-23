import 'package:flutter/material.dart';

class CustomTextFieldWidget extends StatelessWidget {
  const CustomTextFieldWidget({
    super.key,
    required this.text,
    required this.color,
    required this.hintTextColor,
    this.widget,
    required this.controller1,
  });
  final String text;
  final Color color;
  final Color hintTextColor;
  final Widget? widget;
  final TextEditingController controller1;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(40),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 30),
      child: Center(
        child: TextField(
          controller: controller1,
          decoration: InputDecoration(
            suffix: widget,
            hintText: text,
            hintStyle: TextStyle(color: hintTextColor),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 30, vertical: 0),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide.none,
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide.none,
            ),
            border: InputBorder.none,
            focusColor: Colors.grey,
          ),
        ),
      ),
    );
  }
}
