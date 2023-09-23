import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:plant_shop/constants/lists.dart';
import 'package:plant_shop/functions/firebase_functions/firebase_functions.dart';
import 'package:plant_shop/screens/home_screens/home_screen/components/custome_plant_card.dart';
import 'package:plant_shop/screens/home_screens/home_screen/components/sized_box_over_home_pic.dart';
import 'package:plant_shop/screens/home_screens/plant_details_screen/plant_details_screen.dart';

import '../../../utilities/size_config.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static String routeName = '/home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late bool isLoading;
  @override
  void initState() {
    super.initState();
    isLoading = true;
    getPlants().then((value) {
      setState(() {
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: SizeConfig.getScreenWidth(),
            height: SizeConfig.getScreenHeight() * 0.3,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/backgrounds/plant_in_hand.jpg',
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: const SizedBoxOverHomePic(),
          ),
          SizedBox(height: SizeConfig.getScreenHeight() * 0.016),
          Container(
            height: SizeConfig.getScreenHeight() * 0.684,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: !isLoading == true
                  ? StaggeredGrid.count(
                      crossAxisCount: 2,
                      children: [
                        ...List.generate(
                          fetchedPlantsListFromDatabase.length,
                          (index) => GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(
                                context,
                                PlantDetailsScreen.routeName,
                                arguments: {
                                  'selectedIndex': index,
                                  'comingFromSaved': false,
                                },
                              );
                            },
                            child: CustomPlantCard(
                              name: fetchedPlantsListFromDatabase[index]
                                  .getPlantTitle(),
                              image: fetchedPlantsListFromDatabase[index]
                                  .getPlantImage(),
                              sName: fetchedPlantsListFromDatabase[index]
                                  .getPlantSTitle(),
                              index: index,
                              isSaved: fetchedPlantsListFromDatabase[index]
                                  .getPlantIsSaved(),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: SizeConfig.setSizeVertically(20),
                        ),
                      ],
                    )
                  : const Center(
                      child: CircularProgressIndicator(),
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
