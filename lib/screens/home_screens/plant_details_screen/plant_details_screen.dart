import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:plant_shop/constants/colors.dart';
import 'package:plant_shop/constants/lists.dart';
import 'package:plant_shop/functions/show_snackbar.dart';
import 'package:plant_shop/utilities/size_config.dart';

class PlantDetailsScreen extends StatefulWidget {
  const PlantDetailsScreen({super.key});
  static String routeName = '/palnt_details';

  @override
  State<PlantDetailsScreen> createState() => _PlantDetailsScreenState();
}

class _PlantDetailsScreenState extends State<PlantDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    var map;
    map = ModalRoute.of(context)!.settings.arguments;
    int index = map['selectedIndex'];
    String herName = herbList[index].getItemTitle();
    bool comingFromSaved = map['comingFromSaved'];

    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: Text(
            herbList[index].getItemTitle(),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            width: SizeConfig.getScreenWidth(),
            height: SizeConfig.getScreenHeight() * 0.96,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  comingFromSaved
                      ? savedList[index].getItemImage()
                      : herbList[index].getItemImage(),
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
                            Padding(
                              padding: EdgeInsets.fromLTRB(
                                SizeConfig.setSizeHorizontally(20),
                                SizeConfig.setSizeHorizontally(15),
                                SizeConfig.setSizeHorizontally(20),
                                SizeConfig.setSizeHorizontally(5),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                textDirection: TextDirection.rtl,
                                children: [
                                  Text(
                                    comingFromSaved
                                        ? savedList[index].getItemTitle()
                                        : herbList[index].getItemTitle(),
                                    style: TextStyle(
                                      color: kWhiteColor,
                                      fontSize:
                                          SizeConfig.setSizeHorizontally(32),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  !herbList[index].getIsSaved()
                                      ? IconButton(
                                          onPressed: () {
                                            setState(() {
                                              print(index);
                                              if (!savedList.contains(
                                                herbList[index].getItemTitle(),
                                              )) {
                                                savedList.add(herbList[index]);
                                              } else {}
                                              herbList[index].setIsSaved(true);
                                              showSnackBar(
                                                context: context,
                                                text: 'ذخیره شد',
                                                duration: 2,
                                              );
                                            });
                                          },
                                          tooltip: 'ذخیره گیاه',
                                          splashRadius: 10,
                                          icon: Icon(
                                            Icons.bookmark_add_rounded,
                                            size:
                                                SizeConfig.setSizeHorizontally(
                                                    25),
                                          ),
                                          color: kWhiteColor,
                                        )
                                      : comingFromSaved
                                          ? IconButton(
                                              onPressed: () {
                                                setState(() {
                                                  if (savedList.contains(
                                                    herbList.elementAt(index),
                                                  )) {
                                                    savedList.removeAt(index);
                                                    herbList[index]
                                                        .setIsSaved(false);
                                                  }
                                                  showSnackBar(
                                                    context: context,
                                                    text: 'از لیست خارج شد',
                                                    duration: 2,
                                                  );
                                                });
                                                setState(() {});
                                              },
                                              tooltip:
                                                  'خارج کردن گیاه از لیست ذخیره',
                                              splashRadius: 10,
                                              icon: Icon(
                                                Icons.bookmark_added_rounded,
                                                size: SizeConfig
                                                    .setSizeHorizontally(25),
                                              ),
                                              color: kWhiteColor,
                                            )
                                          : IconButton(
                                              onPressed: () {
                                                setState(() {
                                                  if (!savedList.contains(
                                                      herbList[index])) {
                                                    savedList
                                                        .add(herbList[index]);
                                                  } else {
                                                    showSnackBar(
                                                      context: context,
                                                      text:
                                                          '$herName - قبلا ذخیره شده است',
                                                      duration: 3,
                                                    );
                                                  }
                                                  herbList[index]
                                                      .setIsSaved(true);
                                                });
                                              },
                                              tooltip: 'ذخیره گیاه',
                                              splashRadius: 10,
                                              icon: Icon(
                                                Icons.bookmark_added_rounded,
                                                size: SizeConfig
                                                    .setSizeHorizontally(25),
                                              ),
                                              color: kWhiteColor,
                                            ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: SizeConfig.setSizeHorizontally(20),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                textDirection: TextDirection.rtl,
                                children: [
                                  ...List.generate(
                                    5,
                                    (index) => Icon(
                                      Icons.star_border_rounded,
                                      size: SizeConfig.setSizeHorizontally(20),
                                      color: kYellowColor,
                                    ),
                                  ),
                                  const Spacer(),
                                  // Container(
                                  //   width: 170,
                                  //   height: 5,
                                  //   color: Colors.black,
                                  // )
                                  ConstrainedBox(
                                    constraints: BoxConstraints(
                                      maxWidth:
                                          SizeConfig.setSizeHorizontally(170),
                                    ),
                                    child: Text(
                                      comingFromSaved
                                          ? savedList[index].getItemSTitle()
                                          : herbList[index].getItemSTitle(),
                                      style: TextStyle(
                                        color: kWhiteColor,
                                        fontSize:
                                            SizeConfig.setSizeHorizontally(18),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: SizeConfig.setSizeVertically(20)),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: SizeConfig.setSizeHorizontally(20),
                              ),
                              child: Text(
                                'معرفی گیاه:',
                                style: TextStyle(
                                  color: kWhiteColor,
                                  fontSize: SizeConfig.setSizeHorizontally(24),
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.start,
                                textDirection: TextDirection.rtl,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: SizeConfig.setSizeHorizontally(20),
                              ),
                              child: Text(
                                comingFromSaved
                                    ? savedList[index].getItemDescription()
                                    : herbList[index].getItemDescription(),
                                style: TextStyle(
                                  color: kWhiteColor,
                                  fontSize: SizeConfig.setSizeHorizontally(18),
                                ),
                                textAlign: TextAlign.start,
                                textDirection: TextDirection.rtl,
                              ),
                            ),
                            SizedBox(height: SizeConfig.setSizeVertically(20)),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: SizeConfig.setSizeHorizontally(20),
                              ),
                              child: Text(
                                'استفاده گیاه:',
                                style: TextStyle(
                                  color: kWhiteColor,
                                  fontSize: SizeConfig.setSizeHorizontally(24),
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.start,
                                textDirection: TextDirection.rtl,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: SizeConfig.setSizeHorizontally(20),
                              ),
                              child: Text(
                                comingFromSaved
                                    ? savedList[index].getItemUsage()
                                    : herbList[index].getItemUsage(),
                                style: TextStyle(
                                  color: kWhiteColor,
                                  fontSize: SizeConfig.setSizeHorizontally(18),
                                ),
                                textAlign: TextAlign.start,
                                textDirection: TextDirection.rtl,
                              ),
                            ),
                            SizedBox(height: SizeConfig.setSizeVertically(20)),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: SizeConfig.setSizeHorizontally(20),
                              ),
                              child: Text(
                                'به خاطر داشته باشید:',
                                style: TextStyle(
                                  color: kWhiteColor,
                                  fontSize: SizeConfig.setSizeHorizontally(24),
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.start,
                                textDirection: TextDirection.rtl,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: SizeConfig.setSizeHorizontally(20),
                              ),
                              child: Text(
                                comingFromSaved
                                    ? savedList[index].getItemNotice()
                                    : herbList[index].getItemNotice(),
                                style: TextStyle(
                                  color: kWhiteColor,
                                  fontSize: SizeConfig.setSizeHorizontally(18),
                                ),
                                textAlign: TextAlign.start,
                                textDirection: TextDirection.rtl,
                              ),
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
      ),
    );
  }
}
