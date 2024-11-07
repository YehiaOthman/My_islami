import 'package:flutter/material.dart';
import 'package:my_qauran_app/config/styles/dark_app_styles.dart';
import 'package:my_qauran_app/config/styles/light_app_styles.dart';
import 'package:my_qauran_app/core/helper_fun.dart';
import '../../../../../../core/routes_manger.dart';
import '../hadtih_data_class.dart';

class HadithTitleWidget extends StatelessWidget {
  HadithTitleWidget({super.key, required this.hadith});

  Hadith hadith;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, RoutesManger.hadithScreen,
            arguments: hadith);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Text(
          hadith.title,
          textAlign: TextAlign.center,
          style: HelperFun.isLight(context) ? LightAppStyles.hadithTitleWidget : DarkAppStyles.hadithTitleWidget,
        ),
      ),
    );
  }
}
