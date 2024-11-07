import 'package:flutter/material.dart';
import 'package:my_qauran_app/config/styles/dark_app_styles.dart';
import 'package:my_qauran_app/config/styles/light_app_styles.dart';
import 'package:my_qauran_app/core/assets_manger.dart';
import 'package:my_qauran_app/core/helper_fun.dart';
import 'package:my_qauran_app/provider/settings_provider.dart';
import 'package:provider/provider.dart';
import '../../../../../core/strings_manger.dart';
import 'hadtih_data_class.dart';

class HadithScreen extends StatelessWidget {
  const HadithScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Hadith hadith = ModalRoute.of(context)?.settings.arguments as Hadith;
    return Center(
      child: Container(
        decoration:  BoxDecoration(
            image: DecorationImage(
                image: AssetImage(HelperFun.isLight(context) ? AssetsManger.lightMainBackGround : AssetsManger.darkBg),
                fit: BoxFit.cover)),
        child: Scaffold(
          appBar: AppBar(
            title:  Text(StringsManger.QuranString,
            style: HelperFun.isLight(context) ? LightAppStyles.appbar : DarkAppStyles.appbar,),
          ),
          body: Center(
            child: Card(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        hadith.title,
                        style: HelperFun.isLight(context) ? LightAppStyles.hadithTitle : DarkAppStyles.hadithTitle,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const Divider(
                      endIndent: 60,
                      indent: 60,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(hadith.content,
                          textAlign: TextAlign.center,
                          style: HelperFun.isLight(context) ? LightAppStyles.hadithCard : DarkAppStyles.hadithCard),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
