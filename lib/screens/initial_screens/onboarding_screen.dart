import 'package:flutter/material.dart';
import 'package:plant_shop/functions/will_pop_scope_exit.dart';
import 'package:plant_shop/screens/home_screens/home_screen/main_home_screen.dart';
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
        backgroundColor: kWhiteColor,
        body: WillPopScope(
          onWillPop: () => onWillPopActionShowExitDialog(context),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: SizeConfig.getScreenWidth(),
                height: SizeConfig.setSizeVertically(60),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.setSizeHorizontally(40),
                  ),
                  child: Text(
                    currentPage == 0
                        ? 'به اپلیکیشن گیاه من خوش آمدید با گیاه من شناخت خود را درباره تمامی گیاهان کامل کنید'
                        : currentPage == 1
                            ? 'در اینجا با گیاهان و خاصیت هایشان آشنا می شوید'
                            : 'با شناخت گیاه می توانید داکتر گیاهی خود باشید',
                    style: TextStyle(
                      color: kButtonColor,
                      fontSize: SizeConfig.setSizeHorizontally(20),
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Expanded(
                flex: 10,
                child: PageView.builder(
                  controller: _pageController,
                  physics: const BouncingScrollPhysics(),
                  itemCount: onboardingList.length,
                  onPageChanged: (value) {
                    setState(() {
                      currentPage = value;
                    });
                  },
                  itemBuilder: (context, index) {
                    return Center(
                      child: Image.asset(
                        onboardingList[index]['image'],
                      ),
                    );
                  },
                ),
              ),
              Expanded(
                flex: 5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ...List.generate(
                          onboardingList.length,
                          (index) => indicator(index: index),
                        ),
                      ],
                    ),
                    const Spacer(),
                    CustomElevatedButton(
                      text: currentPage == 2 ? 'ادامه دادن' : 'بعدی',
                      onPressed: () async {
                        currentPage != 2
                            ? nextPage()
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
                        print(
                          sharedPreferences.getBool('onBoarding'),
                        );
                      },
                    ),
                    SizedBox(
                      height: SizeConfig.getScreenHeight() * 0.1,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  AnimatedContainer indicator({int? index}) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 250),
      width: currentPage == index ? 20 : 8,
      height: 8,
      margin: const EdgeInsets.only(
        right: 5,
      ),
      decoration: BoxDecoration(
        color:
            index == currentPage ? kButtonColor : kButtonColor.withOpacity(0.5),
        borderRadius: BorderRadius.circular(50),
      ),
    );
  }
}
