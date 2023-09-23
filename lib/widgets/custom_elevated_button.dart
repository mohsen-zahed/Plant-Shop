import 'package:flutter/material.dart';
import 'package:plant_shop/constants/colors.dart';
import 'package:plant_shop/utilities/size_config.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);
  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.getScreenWidth() * 0.6,
      height: SizeConfig.setSizeVertically(50),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: kButtonBorderColor,
            width: 5,
          ),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 0),
              color: kBlackColor.withOpacity(0.4),
              blurRadius: 10,
            ),
          ]),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(kButtonColor),
          elevation: MaterialStateProperty.all(0),
          overlayColor: MaterialStateProperty.all(
            kButtonColor.withOpacity(0.2),
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            fontSize: SizeConfig.setSizeHorizontally(20),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
