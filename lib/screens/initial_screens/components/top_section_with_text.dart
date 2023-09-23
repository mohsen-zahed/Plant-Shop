import 'package:flutter/material.dart';
import 'package:plant_shop/constants/colors.dart';
import 'package:plant_shop/utilities/size_config.dart';

class TopSectionWithText extends StatelessWidget {
  const TopSectionWithText({
    super.key,
    required this.currentPage,
  });

  final int currentPage;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.setSizeHorizontally(40),
        ),
        child: Text(
          currentPage == 0
              ? 'به اپلیکیشن برگ سبز خوش آمدید با آشنا شدن از خواص گیاهان، شناخت خود را درباره تمامی گیاهان کامل کنید'
              : currentPage == 1
                  ? 'در اینجا با گیاهان و خاصیت هایشان آشنا می شوید'
                  : 'با شناخت گیاه می توانید داکتر گیاهی خود باشید',
          style: TextStyle(
            color: kWhiteColor,
            fontSize: SizeConfig.setSizeHorizontally(20),
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
