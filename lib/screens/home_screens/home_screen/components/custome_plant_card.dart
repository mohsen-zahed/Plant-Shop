import 'package:flutter/material.dart';
import 'package:plant_shop/constants/colors.dart';
import 'package:plant_shop/constants/lists.dart';
import 'package:plant_shop/utilities/size_config.dart';

class CustomPlantCard extends StatelessWidget {
  const CustomPlantCard({
    Key? key,
    required this.name,
    required this.image,
    required this.sName,
    required this.index,
    required this.isSaved,
  }) : super(key: key);
  final String name;
  final String image;
  final String sName;
  final int index;
  final bool isSaved;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.setSizeHorizontally(200),
      margin: EdgeInsets.fromLTRB(
        SizeConfig.setSizeHorizontally(15),
        SizeConfig.setSizeVertically(index == 0 || index == 1 ? 0 : 15),
        SizeConfig.setSizeHorizontally(15),
        SizeConfig.setSizeVertically(
            index == herbList.length - 1 || index == herbList.length - 2
                ? 15
                : 0),
      ),
      decoration: BoxDecoration(
        gradient: const RadialGradient(
          colors: [
            Color.fromARGB(255, 133, 161, 145),
            Color.fromARGB(255, 56, 129, 89),
          ],
          radius: 0.75,
        ),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            offset: const Offset(1, 2),
            blurRadius: 5,
            spreadRadius: 1,
            color: kBlackColor.withOpacity(0.7),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: SizeConfig.setSizeVertically(25),
          ),
          Container(
            width: SizeConfig.getScreenWidth() * 0.3,
            height: SizeConfig.setSizeHorizontally(90),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: NetworkImage(
                  image,
                ),
                fit: BoxFit.cover,
              ),
              boxShadow: [
                BoxShadow(
                  offset: const Offset(1, 2),
                  blurRadius: 5,
                  spreadRadius: 1,
                  color: kBlackColor.withOpacity(0.4),
                ),
              ],
            ),
          ),
          SizedBox(
            height: SizeConfig.setSizeVertically(10),
          ),
          Column(
            children: [
              ConstrainedBox(
                constraints: BoxConstraints(
                  maxWidth: SizeConfig.setSizeHorizontally(150),
                ),
                child: Text(
                  name,
                  style: TextStyle(
                    color: kWhiteColor,
                    fontSize: SizeConfig.setSizeHorizontally(18),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 5),
              ConstrainedBox(
                constraints: BoxConstraints(
                  maxWidth: SizeConfig.setSizeHorizontally(150),
                ),
                child: Text(
                  sName,
                  style: TextStyle(
                    color: kWhiteColor,
                    fontSize: SizeConfig.setSizeHorizontally(17),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          SizedBox(
            height: SizeConfig.setSizeVertically(30),
          ),
        ],
      ),
    );
  }
}
