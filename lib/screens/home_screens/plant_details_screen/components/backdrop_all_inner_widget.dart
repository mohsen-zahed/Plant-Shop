import 'package:flutter/material.dart';
import 'package:plant_shop/constants/colors.dart';
import 'package:plant_shop/constants/lists.dart';
import 'package:plant_shop/functions/show_snackbar.dart';
import 'package:plant_shop/models/plant_model.dart';
import 'package:plant_shop/packages/firebase/plant_firebase_crud.dart';
import 'package:plant_shop/utilities/size_config.dart';

class PlantNoticeDescription extends StatelessWidget {
  const PlantNoticeDescription({
    super.key,
    required this.comingFromSaved,
    required this.index,
  });

  final bool comingFromSaved;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: SizeConfig.setSizeHorizontally(20),
      ),
      child: Text(
        comingFromSaved
            ? fetchedBookmarkedPlantsListFromDatabase[index].getPlantNotice()
            : fetchedPlantsListFromDatabase[index].getPlantNotice(),
        style: TextStyle(
          color: kWhiteColor,
          fontSize: SizeConfig.setSizeHorizontally(18),
        ),
        textAlign: TextAlign.start,
        textDirection: TextDirection.rtl,
      ),
    );
  }
}

class PlantNoticeTitle extends StatelessWidget {
  const PlantNoticeTitle({
    super.key,
    required this.noticeTitle,
  });
  final String noticeTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}

class PlantUsageDescription extends StatelessWidget {
  const PlantUsageDescription({
    super.key,
    required this.comingFromSaved,
    required this.index,
  });

  final bool comingFromSaved;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: SizeConfig.setSizeHorizontally(20),
      ),
      child: Text(
        comingFromSaved
            ? fetchedBookmarkedPlantsListFromDatabase[index].getPlantUsage()
            : fetchedPlantsListFromDatabase[index].getPlantUsage(),
        style: TextStyle(
          color: kWhiteColor,
          fontSize: SizeConfig.setSizeHorizontally(18),
        ),
        textAlign: TextAlign.start,
        textDirection: TextDirection.rtl,
      ),
    );
  }
}

class PlantUsageTitle extends StatelessWidget {
  const PlantUsageTitle({
    super.key,
    required this.usageTitle,
  });
  final String usageTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}

class PlantIntroDescription extends StatelessWidget {
  const PlantIntroDescription({
    super.key,
    required this.comingFromSaved,
    required this.index,
  });

  final bool comingFromSaved;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: SizeConfig.setSizeHorizontally(20),
      ),
      child: Text(
        comingFromSaved
            ? fetchedBookmarkedPlantsListFromDatabase[index]
                .getPlantDescription()
            : fetchedPlantsListFromDatabase[index].getPlantDescription(),
        style: TextStyle(
          color: kWhiteColor,
          fontSize: SizeConfig.setSizeHorizontally(18),
        ),
        textAlign: TextAlign.start,
        textDirection: TextDirection.rtl,
      ),
    );
  }
}

class PlantIntroTitle extends StatelessWidget {
  const PlantIntroTitle({
    super.key,
    required this.introTitle,
  });
  final String introTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}

class RatingStarsWithSTitle extends StatelessWidget {
  const RatingStarsWithSTitle({
    super.key,
    required this.comingFromSaved,
    required this.index,
  });

  final bool comingFromSaved;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
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
          ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: SizeConfig.setSizeHorizontally(170),
            ),
            child: Text(
              comingFromSaved
                  ? fetchedBookmarkedPlantsListFromDatabase[index]
                      .getPlantSTitle()
                  : fetchedPlantsListFromDatabase[index].getPlantSTitle(),
              style: TextStyle(
                color: kWhiteColor,
                fontSize: SizeConfig.setSizeHorizontally(18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TitleWithBookmarkIcon extends StatefulWidget {
  const TitleWithBookmarkIcon({
    super.key,
    required this.comingFromSaved,
    required this.index,
    required this.herbName,
  });

  final bool comingFromSaved;
  final int index;
  final String herbName;

  @override
  State<TitleWithBookmarkIcon> createState() => _TitleWithBookmarkIconState();
}

class _TitleWithBookmarkIconState extends State<TitleWithBookmarkIcon> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        SizeConfig.setSizeHorizontally(20),
        SizeConfig.setSizeHorizontally(15),
        SizeConfig.setSizeHorizontally(20),
        SizeConfig.setSizeHorizontally(5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        textDirection: TextDirection.rtl,
        children: [
          Text(
            widget.comingFromSaved
                ? fetchedBookmarkedPlantsListFromDatabase[widget.index]
                    .getPlantTitle()
                : fetchedPlantsListFromDatabase[widget.index].getPlantTitle(),
            style: TextStyle(
              color: kWhiteColor,
              fontSize: SizeConfig.setSizeHorizontally(32),
              fontWeight: FontWeight.bold,
            ),
          ),
          widget.comingFromSaved
              ? const SizedBox()
              : fetchedPlantsListFromDatabase[widget.index].getPlantIsSaved()
                  ? IconButton(
                      onPressed: () {
                        setState(() {
                          showSnackBar(
                            context: context,
                            text: '${widget.herbName} - قبلا ذخیره شده است',
                            duration: 3,
                          );
                        });
                      },
                      tooltip: 'ذخیره گیاه',
                      splashRadius: 10,
                      icon: Icon(
                        Icons.bookmark_added_rounded,
                        size: SizeConfig.setSizeHorizontally(
                          25,
                        ),
                      ),
                      color: kWhiteColor,
                    )
                  : IconButton(
                      onPressed: () async {
                        await addPlantToBookmarkedFirebaseDatabase(
                          plantModel: PlantModel.createItem(
                            plantImage:
                                fetchedPlantsListFromDatabase[widget.index]
                                    .getPlantImage(),
                            plantTitle:
                                fetchedPlantsListFromDatabase[widget.index]
                                    .getPlantTitle(),
                            plantSTitle:
                                fetchedPlantsListFromDatabase[widget.index]
                                    .getPlantSTitle(),
                            plantId: fetchedPlantsListFromDatabase[widget.index]
                                .getPlantId(),
                            plantDescription:
                                fetchedPlantsListFromDatabase[widget.index]
                                    .getPlantDescription(),
                            plantUsage:
                                fetchedPlantsListFromDatabase[widget.index]
                                    .getPlantUsage(),
                            plantNotice:
                                fetchedPlantsListFromDatabase[widget.index]
                                    .getPlantNotice(),
                            plantIsSaved:
                                fetchedPlantsListFromDatabase[widget.index]
                                    .getPlantIsSaved(),
                          ),
                          whenComplete: () {
                            print(fetchedBookmarkedPlantsListFromDatabase);
                          },
                          onError: (error) {},
                        );
                        setState(() {
                          if (!fetchedBookmarkedPlantsListFromDatabase.contains(
                            fetchedPlantsListFromDatabase[widget.index]
                                .getPlantTitle(),
                          )) {
                            fetchedBookmarkedPlantsListFromDatabase.add(
                              fetchedPlantsListFromDatabase[widget.index],
                            );
                            fetchedPlantsListFromDatabase[widget.index]
                                .setPlantId(widget.index);
                            showSnackBar(
                              context: context,
                              text: 'ذخیره شد',
                              duration: 2,
                            );
                            fetchedPlantsListFromDatabase[widget.index]
                                .setPlantIsSaved(true);
                          }
                        });
                      },
                      tooltip: 'ذخیره گیاه',
                      splashRadius: 10,
                      icon: Icon(
                        Icons.bookmark_add_rounded,
                        size: SizeConfig.setSizeHorizontally(25),
                      ),
                      color: kWhiteColor,
                    ),
        ],
      ),
    );
  }
}
