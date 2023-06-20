import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:plant_shop/constants/lists.dart';
import 'package:plant_shop/screens/home_screens/home_screen/components/custome_plant_card.dart';
import 'package:plant_shop/screens/home_screens/home_screen/components/sized_box_over_home_pic.dart';
import 'package:plant_shop/screens/home_screens/plant_details_screen/plant_details_screen.dart';

import '../../../utilities/size_config.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static String routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: SizeConfig.getScreenWidth(),
                height: SizeConfig.setSizeVertically(260),
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
              SizedBox(
                height: SizeConfig.setSizeVertically(15),
              ),
              StaggeredGrid.count(
                crossAxisCount: 2,
                children: [
                  ...List.generate(
                    herbList.length,
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
                      child: CustomePlantCard(
                        isSaved: herbList[index].getIsSaved(),
                        name: herbList[index].getItemTitle(),
                        sName: herbList[index].getItemSTitle(),
                        image: herbList[index].getItemImage(),
                        index: index,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: SizeConfig.setSizeVertically(20),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
