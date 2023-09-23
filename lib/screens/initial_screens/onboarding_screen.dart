import 'package:flutter/material.dart';
import 'package:plant_shop/functions/will_pop_scope_exit.dart';
import 'package:plant_shop/screens/home_screens/home_screen/main_home_screen.dart';
import 'package:plant_shop/screens/initial_screens/components/bottom_section_with_elevated_button.dart';
import 'package:plant_shop/screens/initial_screens/components/middle_section_with_text.dart';
import 'package:plant_shop/screens/initial_screens/components/top_section_with_text.dart';
import 'package:plant_shop/widgets/custom_elevated_button.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../constants/colors.dart';
import '../../constants/lists.dart';
import '../../utilities/size_config.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});
  static String routeName = '/onboarding';

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  void nextPage() {
    _pageController.animateToPage(
      _pageController.page!.toInt() + 1,
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeIn,
    );
  }

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kTransparent,
        body: WillPopScope(
          onWillPop: () => onWillPopActionShowExitDialog(context),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  onboardingImageList[currentPage],
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: SizeConfig.getScreenWidth(),
                  height: SizeConfig.setSizeVertically(60),
                ),
                TopSectionWithText(currentPage: currentPage),
                MiddleSectionWithText(pageController: _pageController),
                BottomSectionWithElevatedButton(
                  currentPage: currentPage,
                  nextPage: () => nextPage(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
