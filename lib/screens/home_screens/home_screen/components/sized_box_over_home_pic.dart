import 'package:flutter/material.dart';
import 'package:plant_shop/constants/colors.dart';
import 'package:plant_shop/utilities/size_config.dart';
import 'package:plant_shop/widgets/custome_text_field.dart';

class SizedBoxOverHomePic extends StatelessWidget {
  const SizedBoxOverHomePic({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.setSizeVertically(270),
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          margin: EdgeInsets.only(
            right: SizeConfig.setSizeHorizontally(25),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'گیاهان دارویی',
                style: TextStyle(
                  color: kWhiteColor,
                  fontSize: SizeConfig.setSizeHorizontally(20),
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.start,
              ),
              Text(
                'گیاهان دارویی را بشناسید',
                style: TextStyle(
                  color: kWhiteColor,
                  fontSize: SizeConfig.setSizeHorizontally(16),
                ),
                textAlign: TextAlign.start,
              ),
              Text(
                'گیاه خود را جستجو کنید',
                style: TextStyle(
                  color: kWhiteColor,
                  fontSize: SizeConfig.setSizeHorizontally(16),
                ),
                textAlign: TextAlign.start,
              ),
              SizedBox(
                height: SizeConfig.setSizeVertically(10),
              ),
              const CustomeTextField(),
              SizedBox(
                height: SizeConfig.setSizeVertically(45),
              )
            ],
          ),
        ),
      ),
    );
  }
}

