import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:plant_shop/constants/colors.dart';
import 'package:plant_shop/constants/lists.dart';
import 'package:plant_shop/screens/home_screens/home_screen/components/custome_plant_card.dart';
import 'package:plant_shop/screens/home_screens/plant_details_screen/plant_details_screen.dart';
import 'package:plant_shop/utilities/size_config.dart';

class SavedPlantScreen extends StatefulWidget {
  const SavedPlantScreen({super.key});
  static String routeName = '/saved_plant';

  @override
  State<SavedPlantScreen> createState() => _SavedPlantScreenState();
}

class _SavedPlantScreenState extends State<SavedPlantScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kWhiteColor,
        extendBody: true,
        body: SingleChildScrollView(
          child: savedList.isNotEmpty
              ? StaggeredGrid.count(
                  crossAxisCount: 2,
                  children: [
                    ...List.generate(
                      savedList.length,
                      (index) => GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(
                            context,
                            PlantDetailsScreen.routeName,
                            arguments: {
                              'selectedIndex': index,
                              'pageName': PlantDetailsScreen.routeName,
                              'comingFromSaved': true,
                            },
                          );
                        },
                        child: CustomePlantCard(
                          isSaved: savedList[index].getIsSaved(),
                          name: savedList[index].getItemTitle(),
                          sName: savedList[index].getItemSTitle(),
                          image: savedList[index].getItemImage(),
                          index: index,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: SizeConfig.setSizeVertically(20),
                    ),
                  ],
                )
              //  Column(
              //     children: [
              //       ...List.generate(
              //         savedList.length,
              //         (index) => GestureDetector(
              //           onTap: () {
              //             Navigator.pushNamed(
              //                 context, PlantDetailsScreen.routeName,
              //                 arguments: {
              //                   'selectedIndex': index,
              //                   'pageName': PlantDetailsScreen.routeName,
              //                   'comingFromSaved': true,
              //                 });
              //           },
              //           child: CustomePlantCard(
              //             isSaved: savedList[index].getIsSaved(),
              //             name: savedList[index].getItemTitle(),
              //             image: savedList[index].getItemImage(),
              //             sName: savedList[index].getItemSTitle(),
              //             index: index,
              //           ),
              //         ),
              //       ),
              //     ],
              //   )
              : Center(
                  child: Container(
                    width: SizeConfig.getScreenWidth(),
                    height: SizeConfig.getScreenHeight(),
                    child: Image.asset(
                      'assets/images/backgrounds/empty_box.jpg.png',
                      scale: 0.7,
                    ),
                  ),
                ),
        ),
      ),
    );
  }
}
