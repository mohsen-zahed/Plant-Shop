import 'package:flutter/material.dart';
import 'package:plant_shop/constants/colors.dart';
import 'package:plant_shop/constants/lists.dart';

class MiddleSectionWithText extends StatelessWidget {
  const MiddleSectionWithText({
    super.key,
    required PageController pageController,
  }) : _pageController = pageController;

  final PageController _pageController;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 10,
      child: PageView.builder(
        controller: _pageController,
        physics: const BouncingScrollPhysics(),
        itemCount: onboardingList.length,
        onPageChanged: (value) {
          // setState(() {
          //   currentPage = value;
          // });
        },
        reverse: true,
        itemBuilder: (context, index) {
          return Container(
            color: kTransparent,
          );
        },
      ),
    );
  }
}
