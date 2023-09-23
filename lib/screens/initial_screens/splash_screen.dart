import 'dart:async';

import 'package:flutter/material.dart';
import 'package:plant_shop/constants/colors.dart';
import 'package:plant_shop/screens/home_screens/home_screen/main_home_screen.dart';
import 'package:plant_shop/screens/initial_screens/onboarding_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  static String routeName = '/splash';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late SharedPreferences sharedPreferences;

  @override
  void initState() {
    // initSharedPreferences();
    Timer(
      const Duration(seconds: 3),
      () => checkOnBoardingScreen(),
    );
    super.initState();
  }

  Future<void> initSharedPreferences() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  void checkOnBoardingScreen() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    if (sharedPreferences.getBool('onBoarding') == null ||
        sharedPreferences.getBool('onBoarding') == false) {
      Navigator.pushNamedAndRemoveUntil(
          context, OnboardingScreen.routeName, (route) => false);
    } else {
      Navigator.pushNamedAndRemoveUntil(
        context,
        MainHomeScreen.routeName,
        (route) => false,
        arguments: {'initial_value': 0},
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBlackColor,
      body: Center(
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.7,
          child: Image.asset(
            'assets/images/backgrounds/launch-screen-image.jpg',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
