import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:plant_shop/constants/colors.dart';
import 'package:plant_shop/screens/home_screens/home_screen/home_screen.dart';
import 'package:plant_shop/screens/home_screens/home_screen/main_home_screen.dart';
import 'package:plant_shop/screens/home_screens/plant_details_screen/plant_details_screen.dart';
import 'package:plant_shop/screens/home_screens/profile_screen/profile_screen.dart';
import 'package:plant_shop/screens/home_screens/saved_screen/saved_screen.dart';
import 'package:plant_shop/screens/home_screens/search_screen/search_screen.dart';
import 'package:plant_shop/screens/home_screens/settings_screen/settings_screen.dart';
import 'package:plant_shop/screens/initial_screens/onboarding_screen.dart';
import 'package:plant_shop/screens/initial_screens/splash_screen.dart';
import 'package:plant_shop/utilities/size_config.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);
            return const MyApp();
          },
        );
      },
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: kWhiteColor,
        appBarTheme: const AppBarTheme(
          backgroundColor: kTransparent,
          elevation: 0,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      routes: {
        OnboardingScreen.routeName: (context) => const OnboardingScreen(),
        MainHomeScreen.routeName: (context) => const MainHomeScreen(),
        HomeScreen.routeName: (context) => const HomeScreen(),
        SavedScreen.routeName: (context) => const SavedScreen(),
        PlantDetailsScreen.routeName: (context) => const PlantDetailsScreen(),
        ProfileScreen.routeName: (context) => const ProfileScreen(),
        SearchScreen.routeName: (context) => const SearchScreen(),
        SettingsScreen.routeName: (context) => const SettingsScreen(),
      },
    );
  }
}
