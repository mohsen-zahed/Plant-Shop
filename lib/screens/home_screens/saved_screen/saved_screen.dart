import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:plant_shop/constants/colors.dart';
import 'package:plant_shop/constants/lists.dart';
import 'package:plant_shop/functions/firebase_functions/firebase_functions.dart';
import 'package:plant_shop/packages/firebase/plant_firebase_crud.dart';
import 'package:plant_shop/screens/home_screens/home_screen/components/custome_plant_card.dart';
import 'package:plant_shop/screens/home_screens/plant_details_screen/plant_details_screen.dart';
import 'package:plant_shop/utilities/size_config.dart';

class SavedScreen extends StatefulWidget {
  const SavedScreen({super.key});
  static String routeName = '/saved_plant';
  static bool isRemovedActivated = false;

  @override
  State<SavedScreen> createState() => _SavedScreenState();
}

class _SavedScreenState extends State<SavedScreen> {
  // @override
  // void initState() {
  //   super.initState();
  //   getBookmarkedPlants().then(
  //     (value) {
  //       setState(() {
  //         for (var i = 0;
  //             i < fetchedBookmarkedPlantsListFromDatabase.length;
  //             i++) {
  //           print(
  //             fetchedBookmarkedPlantsListFromDatabase[i].getPlantIsSaved(),
  //           );
  //         }
  //       });
  //     },
  //   );
  // }

  bool isRemovedActivated = false;
  bool isRemovingItem = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          height: SizeConfig.getScreenHeight(),
          padding: EdgeInsets.fromLTRB(
            SizeConfig.setSizeHorizontally(0),
            SizeConfig.setSizeVertically(40),
            SizeConfig.setSizeHorizontally(0),
            SizeConfig.setSizeVertically(20),
          ),
          child: fetchedBookmarkedPlantsListFromDatabase.isNotEmpty
              ? Stack(
                  children: [
                    StaggeredGrid.count(
                      crossAxisCount: 2,
                      children: [
                        ...List.generate(
                          fetchedBookmarkedPlantsListFromDatabase.length,
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
                            onLongPress: () {
                              setState(() {
                                isRemovedActivated = true;
                              });
                            },
                            child: Stack(
                              children: [
                                CustomPlantCard(
                                  isSaved:
                                      fetchedBookmarkedPlantsListFromDatabase[
                                              index]
                                          .getPlantIsSaved(),
                                  name: fetchedBookmarkedPlantsListFromDatabase[
                                          index]
                                      .getPlantTitle(),
                                  sName:
                                      fetchedBookmarkedPlantsListFromDatabase[
                                              index]
                                          .getPlantSTitle(),
                                  image:
                                      fetchedBookmarkedPlantsListFromDatabase[
                                              index]
                                          .getPlantImage(),
                                  index: index,
                                ),
                                isRemovedActivated
                                    // ! remove Icon....
                                    ? Positioned(
                                        top: SizeConfig.getScreenWidth() * 0.03,
                                        left:
                                            SizeConfig.getScreenHeight() * 0.03,
                                        child: SizedBox(
                                          child: GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                isRemovingItem = true;
                                                for (var i = 0;
                                                    i < herbList.length;
                                                    i++) {
                                                  if (savedList[index]
                                                          .getPlantId() ==
                                                      herbList[i].getPlantId()) {
                                                    Future.delayed(
                                                        const Duration(
                                                            milliseconds: 600),
                                                        () {
                                                      setState(() {
                                                        savedList
                                                            .removeAt(index);
                                                        herbList[i]
                                                            .setPlantIsSaved(false);
                                                        isRemovingItem = false;
                                                        if (savedList.isEmpty) {
                                                          isRemovedActivated =
                                                              false;
                                                        }
                                                      });
                                                    });
                                                    break;
                                                  }
                                                }

                                                if (savedList.isEmpty) {
                                                  isRemovedActivated = false;
                                                }
                                              });
                                            },
                                            child: Container(
                                              padding: const EdgeInsets.all(3),
                                              decoration: BoxDecoration(
                                                color: kWhiteColor,
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                              ),
                                              child: const Icon(
                                                Icons.remove_circle,
                                                color: kRedColor,
                                                size: 25,
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                    : const SizedBox(),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: SizeConfig.setSizeVertically(20),
                        ),
                      ],
                    ),
                    Positioned.fill(
                      child: Center(
                        child: isRemovingItem
                            ? const CircularProgressIndicator()
                            : const SizedBox(),
                      ),
                    )
                  ],
                )
              : Center(
                  child: SizedBox(
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
      floatingActionButton: isRemovedActivated
          ? Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      isRemovedActivated = false;
                    });
                  },
                  backgroundColor: kRedColor,
                  child: const Icon(
                    Icons.cancel,
                    color: kWhiteColor,
                  ),
                ),
                SizedBox(
                  height: SizeConfig.setSizeVertically(80),
                ),
              ],
            )
          : const SizedBox(),
    );
  }
}
