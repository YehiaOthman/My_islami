import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../../config/styles/dark_app_styles.dart';
import '../../../../../config/styles/light_app_styles.dart';
import '../../../../../core/helper_fun.dart';
import '../../../../../provider/settings_provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Languagebottomsheet extends StatefulWidget {
  const Languagebottomsheet({super.key});

  @override
  State<Languagebottomsheet> createState() => _LanguagebottomsheetState();
}

class _LanguagebottomsheetState extends State<Languagebottomsheet> {
  @override
  Widget build(BuildContext context) {
    var myProvider = Provider.of<SettingProvider>(context);
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15), topRight: Radius.circular(15)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            InkWell(
              onTap: () => myProvider.switchLocale('en'),
              child: myProvider.isEnglish()
                  ? selectedLanguageWidget(
                      AppLocalizations.of(context)!.english)
                  : unSelectedLanguageWidget(
                      AppLocalizations.of(context)!.english),
            ),
            const SizedBox(height: 10),
            InkWell(
              onTap: () => myProvider.switchLocale('ar'),
              child: !myProvider.isEnglish()
                  ? selectedLanguageWidget(AppLocalizations.of(context)!.arabic)
                  : unSelectedLanguageWidget(
                      AppLocalizations.of(context)!.arabic),
            ),
          ],
        ),
      ),
    );
  }

  Widget selectedLanguageWidget(String selectedLanguage) {
    return Row(
      children: [
        Text(
          selectedLanguage,
          style: HelperFun.isLight(context)
              ? LightAppStyles.selectedLanguageWidget
              : DarkAppStyles.selectedLanguageWidget,
        ),
        const Spacer(),
        const Icon(Icons.check),
      ],
    );
  }

  Widget unSelectedLanguageWidget(String unSelectedLanguage) {
    return Row(
      children: [
        Text(
          unSelectedLanguage,
          style: HelperFun.isLight(context)
              ? LightAppStyles.unSelectedLanguageWidget
              : DarkAppStyles.unSelectedLanguageWidget,
        ),
      ],
    );
  }
}
