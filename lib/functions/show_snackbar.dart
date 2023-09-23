import 'package:flutter/material.dart';
import 'package:plant_shop/constants/colors.dart';
import 'package:plant_shop/utilities/size_config.dart';

void showSnackBar({
  required BuildContext context,
  required String text,
  required int duration,
}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      showCloseIcon: true,
      closeIconColor: kWhiteColor,
      backgroundColor: kButtonBorderColor,
      duration: Duration(seconds: duration),
      content: Row(
        textDirection: TextDirection.rtl,
        children: [
          Icon(
            Icons.check,
            size: SizeConfig.setSizeHorizontally(20),
            color: kWhiteColor,
          ),
          const SizedBox(width: 20),
          Text(
            text,
            style: TextStyle(fontSize: SizeConfig.setSizeHorizontally(20)),
            textDirection: TextDirection.rtl,
          ),
        ],
      ),
    ),
  );
}
