import 'package:flutter/material.dart';
import 'package:plant_shop/constants/colors.dart';
import 'package:plant_shop/constants/lists.dart';
import 'package:plant_shop/screens/home_screens/home_screen/main_home_screen.dart';
import 'package:plant_shop/utilities/size_config.dart';
import 'package:plant_shop/widgets/custom_elevated_button.dart';
import 'package:shared_preferences/shared_preferences.dart';

class BottomSectionWithElevatedButton extends StatefulWidget {
  const BottomSectionWithElevatedButton({
    super.key,
    required this.nextPage,
    required this.currentPage,
  });

  final Function() nextPage;
  final int currentPage;

  @override
  State<BottomSectionWithElevatedButton> createState() =>
      _BottomSectionWithElevatedButtonState();
}

class _BottomSectionWithElevatedButtonState
    extends State<BottomSectionWithElevatedButton> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            textDirection: TextDirection.rtl,
            children: [
              ...List.generate(
                onboardingList.length,
                (index) => indicator(index: index),
              ),
            ],
          ),
          const Spacer(),
          CustomElevatedButton(
            text: widget.currentPage == 2 ? 'ادامه دادن' : 'بعدی',
            onPressed: () async {
              widget.currentPage != 2
                  ? widget.nextPage
                  : Navigator.pushNamed(
                      context,
                      MainHomeScreen.routeName,
                      arguments: {
                        'initial_value': 0,
                      },
                    );
              SharedPreferences sharedPreferences =
                  await SharedPreferences.getInstance();
              sharedPreferences.setBool('onBoarding', true);
            },
          ),
          SizedBox(
            height: SizeConfig.getScreenHeight() * 0.1,
          ),
        ],
      ),
    );
  }

  AnimatedContainer indicator({int? index}) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 250),
      width: widget.currentPage == index ? 20 : 8,
      height: 8,
      margin: const EdgeInsets.only(
        right: 5,
      ),
      decoration: BoxDecoration(
        color: index == widget.currentPage
            ? kWhiteColor
            : kWhiteColor.withOpacity(0.5),
        borderRadius: BorderRadius.circular(50),
      ),
    );
  }
}
