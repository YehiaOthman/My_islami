import 'package:flutter/material.dart';
import 'package:my_qauran_app/config/styles/dark_app_styles.dart';
import 'package:my_qauran_app/config/styles/light_app_styles.dart';
import 'package:my_qauran_app/core/helper_fun.dart';

import '../../../../../core/colors_manger.dart';
import '../../../../../core/routes_manger.dart';
import '../quran_screen/quran_data_class/quran_data_class.dart';

class QuranTitleWidget extends StatefulWidget {
  QuranTitleWidget({super.key, required this.quranDetails});

  QuranDataClass quranDetails;

  @override
  State<QuranTitleWidget> createState() => _QuranTitleWidgetState();
}

class _QuranTitleWidgetState extends State<QuranTitleWidget> {
  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, RoutesManger.quranScreen,
              arguments: widget.quranDetails);
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
                child: Text(
              widget.quranDetails.suraName,
              style: HelperFun.isLight(context)
                  ? LightAppStyles.verseNameTitleWidget
                  : DarkAppStyles.verseNameTitleWidget,
              textAlign: TextAlign.center,
            )),
            const VerticalDivider(),
            Expanded(
                child: Text(widget.quranDetails.suraNumbers,
                    style: HelperFun.isLight(context)
                        ? LightAppStyles.verseNumTitleWidget
                        : DarkAppStyles.verseNumTitleWidget,
                    textAlign: TextAlign.center)),
          ],
        ),
      ),
    );
  }
}
