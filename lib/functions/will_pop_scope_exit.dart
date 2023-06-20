import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:plant_shop/constants/colors.dart';
import 'package:plant_shop/utilities/size_config.dart';

Future<bool> onWillPopActionShowExitDialog(BuildContext context) {
  exitDialog(context);
  return Future.value(false);
}

void exitDialog(BuildContext context) async {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            SizeConfig.setSizeHorizontally(15),
          ),
        ),
        child: SizedBox(
          width: double.minPositive,
          child: Padding(
            padding: EdgeInsets.all(
              SizeConfig.setSizeHorizontally(20),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'از برنامه خارج می شوید؟',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: SizeConfig.setSizeHorizontally(20),
                      color: kBlackColor),
                ),
                SizedBox(
                  height: SizeConfig.setSizeHorizontally(20),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      child: InkWell(
                        onTap: () async {
                          if (Platform.isAndroid) {
                            SystemNavigator.pop();
                          } else if (Platform.isIOS) {
                            exit(0);
                          }
                        },
                        child: Center(
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: SizeConfig.setSizeHorizontally(20),
                              vertical: SizeConfig.setSizeVertically(10),
                            ),
                            child: Text(
                              "بله",
                              style: TextStyle(
                                fontSize: SizeConfig.setSizeHorizontally(20),
                                color: kButtonColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: SizeConfig.setSizeVertically(15),
                      width: SizeConfig.setSizeHorizontally(1),
                      color: kBlackColor,
                    ),
                    SizedBox(
                      child: InkWell(
                        onTap: () async {
                          Navigator.pop(context);
                        },
                        child: Center(
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: SizeConfig.setSizeHorizontally(20),
                              vertical: SizeConfig.setSizeVertically(10),
                            ),
                            child: Text(
                              'نخیر',
                              style: TextStyle(
                                fontSize: SizeConfig.setSizeHorizontally(20),
                                color: kButtonColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      );
    },
  );
}
