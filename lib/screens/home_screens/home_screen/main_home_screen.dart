import 'package:flutter/material.dart';
import 'package:plant_shop/constants/colors.dart';
import 'package:plant_shop/constants/lists.dart';
import 'package:plant_shop/functions/will_pop_scope_exit.dart';
import 'package:plant_shop/screens/home_screens/home_screen/home_screen.dart';
import 'package:plant_shop/screens/home_screens/saved_screen/saved_plants_screen.dart';
import 'package:plant_shop/screens/home_screens/search_screen/search_screen.dart';
import 'package:plant_shop/screens/home_screens/settings_screen/settings_screen.dart';
import 'package:plant_shop/utilities/size_config.dart';

class MainHomeScreen extends StatefulWidget {
  const MainHomeScreen({super.key});
  static String routeName = '/main_home';

  @override
  State<MainHomeScreen> createState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends State<MainHomeScreen> {
  int selectedBottomNav = 0;
  List<Widget> scaffoldBodyScreens = const [
    HomeScreen(),
    SearchScreen(),
    SavedPlantScreen(),
    SettingsScreen(),
  ];

  bool isArgumentsLoaded = false;
  dynamic arguments;

  @override
  Widget build(BuildContext context) {
    getArguments();
    return WillPopScope(
      onWillPop: () => onWillPopActionShowExitDialog(context),
      child: Scaffold(
        body: scaffoldBodyScreens[selectedBottomNav],
        resizeToAvoidBottomInset: true,
        extendBody: true,
        bottomNavigationBar: SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.setSizeHorizontally(20),
              vertical: SizeConfig.setSizeVertically(10),
            ),
            margin: EdgeInsets.symmetric(
              horizontal: SizeConfig.setSizeHorizontally(20),
              vertical: SizeConfig.setSizeVertically(25),
            ),
            decoration: BoxDecoration(
              color: kbackgroundColor2.withOpacity(0.8),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Row(
              textDirection: TextDirection.rtl,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ...List.generate(
                  scaffoldBodyScreens.length,
                  (index) => GestureDetector(
                    onTap: () => setState(() {
                      selectedBottomNav = index;
                    }),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        AnimatedContainer(
                          duration: const Duration(milliseconds: 150),
                          width: selectedBottomNav == index ? 20 : 0,
                          height: 5,
                          decoration: BoxDecoration(
                            color: kWhiteColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        SizedBox(
                          width: 36,
                          height: 36,
                          child: Icon(
                            bottomNavs[index]['icon'],
                            color: selectedBottomNav == index
                                ? kWhiteColor
                                : kGreyColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void getArguments() {
    if (!isArgumentsLoaded) {
      arguments = ModalRoute.of(context)!.settings.arguments;
      selectedBottomNav = arguments['initial_value'];
      isArgumentsLoaded = !isArgumentsLoaded;
    }
  }
}
