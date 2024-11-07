import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_qauran_app/config/styles/dark_app_styles.dart';
import 'package:my_qauran_app/config/styles/light_app_styles.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:my_qauran_app/core/helper_fun.dart';
import 'package:my_qauran_app/provider/settings_provider.dart';
import 'package:provider/provider.dart';

class Themebottomsheet extends StatefulWidget {
  const Themebottomsheet({super.key});

  @override
  State<Themebottomsheet> createState() => _ThemebottomsheetState();
}

class _ThemebottomsheetState extends State<Themebottomsheet> {
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
              onTap: () => myProvider.switchTheme(AppLocalizations.of(context)!.light),
                child:HelperFun.isLight(context) ? selectedThemeWidget(AppLocalizations.of(context)!.light) : unSelectedThemeWidget(AppLocalizations.of(context)!.light)),
            const SizedBox(height: 10,),
            InkWell(
              onTap: () => myProvider.switchTheme(AppLocalizations.of(context)!.dark),
                child:HelperFun.isLight(context) ?  unSelectedThemeWidget(AppLocalizations.of(context)!.dark) : selectedThemeWidget(AppLocalizations.of(context)!.dark))
          ],
        ),
      ),
    );
  }
  Widget selectedThemeWidget(String selectedTheme){
   return Row(
      children: [
        Text(
          selectedTheme,
          style: HelperFun.isLight(context) ? LightAppStyles.selectedThemeWidget : DarkAppStyles.selectedThemeWidget),
        const Spacer(),
        const Icon(Icons.check ,)
      ],
    );
  }
  Widget unSelectedThemeWidget(String unSelectedTheme){
   return Row(
      children: [
        Text(
          unSelectedTheme,
          style: HelperFun.isLight(context) ? LightAppStyles.unSelectedThemeWidget : DarkAppStyles.unSelectedLanguageWidget),
      ],
    );
  }
}
