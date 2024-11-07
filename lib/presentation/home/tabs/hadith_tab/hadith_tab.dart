import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_qauran_app/config/styles/dark_app_styles.dart';
import 'package:my_qauran_app/config/styles/light_app_styles.dart';
import 'package:my_qauran_app/core/helper_fun.dart';
import '../../../../core/assets_manger.dart';
import '../../../../core/colors_manger.dart';
import 'hadith_screen/hadith_title_widget/hadith_title_widget.dart';
import 'hadith_screen/hadtih_data_class.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HadithTab extends StatefulWidget {
  const HadithTab({super.key});

  @override
  State<HadithTab> createState() => _HadithTabState();
}

class _HadithTabState extends State<HadithTab> {
  List<Hadith> allHadithList = [];

  @override
  Widget build(BuildContext context) {
    if (allHadithList.isEmpty) readFiles();
    return Container(
      child: Column(
        children: [
          Center(
            child: Image.asset(
              AssetsManger.hadithHader,
              height: 200,
            ),
          ),
          const Divider(),
           Text(AppLocalizations.of(context)!.hadithnames,
              style: HelperFun.isLight(context) ? LightAppStyles.hadithNames : DarkAppStyles.hadithNames,
              textAlign: TextAlign.center),
          const Divider(),
          Expanded(
              child: allHadithList.isEmpty
                  ? const Center(
                      child: CircularProgressIndicator(
                      color: ColorsManger.goldColor,
                    ))
                  : ListView.separated(
                      itemCount: allHadithList.length,
                      itemBuilder: (context, index) => HadithTitleWidget(
                        hadith: allHadithList[index],
                      ),
                      separatorBuilder: (context, index) => Divider(),
                    ))
        ],
      ),
    );
  }

  readFiles() async {
    String fileContent =
        await rootBundle.loadString('assets/ahadith/ahadeth.txt');
    List<String> hadithList = fileContent.trim().split('#');
    for (int i = 0; i < hadithList.length; i++) {
      String hadithItem = hadithList[i];
      List<String> hadithLines = hadithItem.trim().split('\n');
      String title = hadithLines[0];
      hadithLines.removeAt(0);
      String content = hadithLines.join('\n');
      Hadith hadith = Hadith(title: title, content: content);
      allHadithList.add(hadith);
    }
    setState(() {});
  }
}
