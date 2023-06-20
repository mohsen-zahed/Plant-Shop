import 'package:flutter/material.dart';
import 'package:plant_shop/constants/colors.dart';
import 'package:plant_shop/utilities/size_config.dart';

class CustomePlantCard extends StatelessWidget {
  const CustomePlantCard({
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
      margin: EdgeInsets.symmetric(
        horizontal: SizeConfig.setSizeHorizontally(15),
        vertical: SizeConfig.setSizeVertically(15),
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
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: SizeConfig.setSizeVertically(25),
          ),
          Column(
            children: [
              Text(
                name,
                style: TextStyle(
                  color: kWhiteColor,
                  fontSize: SizeConfig.setSizeHorizontally(18),
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 5),
              Text(
                sName,
                style: TextStyle(
                  color: kWhiteColor,
                  fontSize: SizeConfig.setSizeHorizontally(17),
                ),
                textAlign: TextAlign.center,
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
