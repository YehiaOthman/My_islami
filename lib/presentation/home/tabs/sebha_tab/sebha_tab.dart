import 'package:flutter/material.dart';
import 'package:my_qauran_app/config/styles/dark_app_styles.dart';
import 'package:my_qauran_app/config/styles/light_app_styles.dart';
import 'package:my_qauran_app/config/theme/theme.dart';
import 'package:my_qauran_app/core/assets_manger.dart';
import 'package:my_qauran_app/core/colors_manger.dart';
import 'package:my_qauran_app/core/helper_fun.dart';
import 'package:my_qauran_app/core/strings_manger.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SebhaTab extends StatefulWidget {
  const SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  List<String> tasbehList = ['لا اله الا الله', 'استغفرالله'];
  int tasbehCount = 0;
  int tasbehIndex = 0;
  double angle = 0.10;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Spacer(
            flex: 1,
          ),
          Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                  child: Center(
                child: Image.asset(
                  HelperFun.isLight(context) ? AssetsManger.sebhaHead : AssetsManger.sebhaHeadDarkTheme,
                ),
              )),
              Positioned(
                top: 30,
                left: 40,
                child: Center(
                  child: Transform.rotate(
                    angle: angle,
                    child: Image.asset(
                      HelperFun.isLight(context) ? AssetsManger.sebhaBody : AssetsManger.sebhaBodyDarkTheme,
                      width: 330,
                    ),
                  ),
                ),
              )
            ],
          ),
          const Spacer(
            flex: 8,
          ),
          Text(
            AppLocalizations.of(context)!.tasbehcounter,
            style: HelperFun.isLight(context) ? LightAppStyles.tasbehCountTitle : DarkAppStyles.tasbehCountTitle,
          ),
          const Spacer(
            flex: 1,
          ),
          Container(
            width: 60,
            height: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: HelperFun.isLight(context) ? ColorsManger.goldColor.withOpacity(0.5) :  const Color(0XFF141A2E).withOpacity(0.5),
            ),
            child: Center(
                child: Text(
              '$tasbehCount',
              style: HelperFun.isLight(context) ? LightAppStyles.tasbehCounter : DarkAppStyles.tasbehCounter,
            )),
          ),
          const Spacer(
            flex: 1,
          ),
          ElevatedButton(
              onPressed: () {
                angle += 10;
                onBtnClick();
                onTasbehChange();
                onTasbheRepeat();
                setState(() {});
              },
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: Text(
                  tasbehList[tasbehIndex],
                  style: HelperFun.isLight(context) ? LightAppStyles.tasbeh : DarkAppStyles.tasbeh,
                ),
              )),
          const Spacer(
            flex: 3,
          )
        ],
      ),
    );
  }

  void onBtnClick() {
    tasbehCount++;
  }

  void onTasbehChange() {
    if (tasbehCount == 33) {
      tasbehCount = 0;
      tasbehIndex++;
    }
  }

  void onTasbheRepeat() {
    if (tasbehIndex == tasbehList.length) {
      tasbehIndex = 0;
    }
  }
}
