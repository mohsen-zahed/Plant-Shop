import 'package:flutter/material.dart';
import 'package:plant_shop/constants/colors.dart';
import 'package:plant_shop/utilities/size_config.dart';

class CustomeTextField extends StatelessWidget {
  const CustomeTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.setSizeHorizontally(170),
      height: SizeConfig.setSizeVertically(45),
      decoration: BoxDecoration(
        color: kWhiteColor.withOpacity(0.7),
        borderRadius: BorderRadius.circular(25),
      ),
      child: TextField(
        textDirection: TextDirection.rtl,
        style: const TextStyle(color: kWhiteColor),
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
          suffixIcon: const Icon(
            Icons.search,
            color: kButtonColor,
          ),
          hintText: 'جستجو کنید...',
          hintTextDirection: TextDirection.rtl,
          hintStyle: const TextStyle(
            color: kButtonColor,
          ),
          contentPadding: EdgeInsets.symmetric(
            horizontal: SizeConfig.setSizeHorizontally(10),
          ),
        ),
      ),
    );
  }
}
