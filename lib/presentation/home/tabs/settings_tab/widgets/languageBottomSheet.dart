import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:my_qauran_app/config/styles/light_app_styles.dart';
import '../../../../../config/styles/dark_app_styles.dart';
import '../../../../../core/colors_manger.dart';
import '../../../../../core/helper_fun.dart';

class Languagebottomsheet extends StatefulWidget {
  const Languagebottomsheet({super.key});

  @override
  State<Languagebottomsheet> createState() => _LanguagebottomsheetState();
}

class _LanguagebottomsheetState extends State<Languagebottomsheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15), topRight: Radius.circular(15)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            selectedLanguageWidget(AppLocalizations.of(context)!.arabic),
            const SizedBox(height: 10,),
            unSelectedLanguageWidget(AppLocalizations.of(context)!.english)
          ],
        ),
      ),
    );
  }
  Widget selectedLanguageWidget(String selectedLanguage){
    return Row(
      children: [
        Text(
            selectedLanguage,
            style: HelperFun.isLight(context) ? LightAppStyles.selectedLanguageWidget : DarkAppStyles.selectedLanguageWidget),
        const Spacer(),
        const Icon(Icons.check ,)
      ],
    );
  }
  Widget unSelectedLanguageWidget(String unSelectedLanguage){
    return Row(
      children: [
        Text(
          unSelectedLanguage,
          style:HelperFun.isLight(context) ? LightAppStyles.unSelectedLanguageWidget : DarkAppStyles.unSelectedLanguageWidget),
      ],
    );
  }
}
