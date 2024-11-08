import 'package:flutter/material.dart';
import 'package:my_qauran_app/config/styles/dark_app_styles.dart';
import 'package:my_qauran_app/config/styles/light_app_styles.dart';
import 'package:my_qauran_app/core/helper_fun.dart';
import 'package:my_qauran_app/presentation/home/tabs/settings_tab/widgets/languageBottomSheet.dart';
import 'package:my_qauran_app/presentation/home/tabs/settings_tab/widgets/themeBottomSheet.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../../../core/colors_manger.dart';

class SettingsTab extends StatefulWidget {
  const SettingsTab({super.key});

  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Spacer(
            flex: 2,
          ),
          Text(
            AppLocalizations.of(context)!.theme,
            style: HelperFun.isLight(context)
                ? LightAppStyles.themeTitle
                : DarkAppStyles.themeTitle,
          ),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () => themeBottomSheet(context),
            child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: HelperFun.isLight(context)
                            ? ColorsManger.goldColor
                            : ColorsManger.selectedIcon,
                        width: 3)),
                child: Row(
                  children: [
                    Text(
                      HelperFun.isLight(context) ? AppLocalizations.of(context)!.light : AppLocalizations.of(context)!.dark,
                      style:HelperFun.isLight(context) ?  LightAppStyles.selectedTheme : DarkAppStyles.selectedTheme,
                    ),
                  ],
                )),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            AppLocalizations.of(context)!.language,
            style: HelperFun.isLight(context) ? LightAppStyles.langTitle : DarkAppStyles.langTitle,
          ),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () => languageBottomSheet(context),
            child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: HelperFun.isLight(context)
                            ? ColorsManger.goldColor
                            : ColorsManger.selectedIcon,
                        width: 3)),
                child: Row(
                  children: [
                    Text(
                      AppLocalizations.of(context)!.selectedlang,
                      style: HelperFun.isLight(context) ? LightAppStyles.selectedLang : DarkAppStyles.selectedLang,
                    ),
                  ],
                )),
          ),
          const Spacer(
            flex: 10,
          )
        ],
      ),
    );
  }

  themeBottomSheet(context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => const Themebottomsheet(),
    );
  }

  languageBottomSheet(context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => const Languagebottomsheet(),
    );
  }
}
