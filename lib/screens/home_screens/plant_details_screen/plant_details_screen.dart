import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:plant_shop/constants/colors.dart';
import 'package:plant_shop/constants/lists.dart';
import 'package:plant_shop/functions/show_snackbar.dart';
import 'package:plant_shop/models/plant_model.dart';
import 'package:plant_shop/packages/firebase/plant_firebase_crud.dart';
import 'package:plant_shop/screens/home_screens/plant_details_screen/components/backdrop_all_inner_widget.dart';
import 'package:plant_shop/utilities/size_config.dart';

class PlantDetailsScreen extends StatefulWidget {
  const PlantDetailsScreen({super.key});
  static String routeName = '/palnt_details';

  @override
  State<PlantDetailsScreen> createState() => _PlantDetailsScreenState();
}

class _PlantDetailsScreenState extends State<PlantDetailsScreen> {
  var map;
  @override
  Widget build(BuildContext context) {
    map = ModalRoute.of(context)!.settings.arguments;
    int index = map['selectedIndex'];
    String herbName = fetchedPlantsListFromDatabase[index].getPlantTitle();
    bool comingFromSaved = map['comingFromSaved'];
    bool isSaving = false;
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          herbName,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: SizeConfig.getScreenWidth(),
          height: SizeConfig.getScreenHeight(),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                fetchedPlantsListFromDatabase[index].getPlantImage(),
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              SizedBox(
                height: SizeConfig.getScreenHeight() * 0.3,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                  child: SizedBox(
                    width: SizeConfig.getScreenWidth() * 0.8,
                    height: SizeConfig.getScreenHeight() * 0.6,
                    child: SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          TitleWithBookmarkIcon(
                            herbName: herbName,
                            comingFromSaved: comingFromSaved,
                            index: index,
                          ),
                          RatingStarsWithSTitle(
                            comingFromSaved: comingFromSaved,
                            index: index,
                          ),
                          SizedBox(height: SizeConfig.setSizeVertically(20)),
                          const PlantIntroTitle(introTitle: 'معرفی گیاه'),
                          PlantIntroDescription(
                            comingFromSaved: comingFromSaved,
                            index: index,
                          ),
                          SizedBox(height: SizeConfig.setSizeVertically(20)),
                          const PlantUsageTitle(usageTitle: 'موارد استفاده'),
                          PlantUsageDescription(
                            comingFromSaved: comingFromSaved,
                            index: index,
                          ),
                          SizedBox(height: SizeConfig.setSizeVertically(20)),
                          const PlantNoticeTitle(
                              noticeTitle: 'به خاطر داشته باشید'),
                          PlantNoticeDescription(
                            comingFromSaved: comingFromSaved,
                            index: index,
                          ),
                          SizedBox(height: SizeConfig.setSizeVertically(20)),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
