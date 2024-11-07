import 'package:flutter/material.dart';
import 'package:my_qauran_app/config/styles/dark_app_styles.dart';
import 'package:my_qauran_app/config/styles/light_app_styles.dart';
import 'package:my_qauran_app/core/helper_fun.dart';
import 'package:my_qauran_app/presentation/home/tabs/hadith_tab/hadith_tab.dart';
import 'package:my_qauran_app/presentation/home/tabs/quran_tab/quran_tab.dart';
import 'package:my_qauran_app/presentation/home/tabs/radio_tab/radio_tab.dart';
import 'package:my_qauran_app/presentation/home/tabs/sebha_tab/sebha_tab.dart';
import 'package:my_qauran_app/presentation/home/tabs/settings_tab/settings_tab.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:my_qauran_app/provider/settings_provider.dart';
import 'package:provider/provider.dart';

import '../../core/assets_manger.dart';
import '../../core/strings_manger.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool flag = true;
  List<Widget> tabs = [
    QuranTab(),
    HadithTab(),
    SebhaTab(),
    RadioTab(),
    SettingsTab(),
  ];

  int selectedItem = 0;

  @override
  Widget build(BuildContext context) {
    var myProvider = Provider.of<SettingProvider>(context);
    return Container(
      decoration:  BoxDecoration(
        image: DecorationImage(
          image: AssetImage(HelperFun.isLight(context) ? AssetsManger.lightMainBackGround : AssetsManger.darkBg ),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title:  Text(AppLocalizations.of(context)!.apptitle,
              style: HelperFun.isLight(context) ? LightAppStyles.appbar : DarkAppStyles.appbar,
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: selectedItem,
            onTap: (value) {
              setState(() {
                selectedItem = value;
              });
            },
            items:  [
              BottomNavigationBarItem(
                icon: const ImageIcon(AssetImage(AssetsManger.quranIcon)),
                label: AppLocalizations.of(context)!.qurantab,
              ),
              BottomNavigationBarItem(
                icon: const ImageIcon(AssetImage(AssetsManger.hadithIcon)),
                label: AppLocalizations.of(context)!.hadithtab,
              ),
              BottomNavigationBarItem(
                icon: const ImageIcon(AssetImage(AssetsManger.sebhaIcon)),
                label: AppLocalizations.of(context)!.sebhatab,
              ),
              BottomNavigationBarItem(
                icon: const ImageIcon(AssetImage(AssetsManger.radioIcon)),
                label: AppLocalizations.of(context)!.radiotab,
              ),
              BottomNavigationBarItem(
                icon: const Icon(
                  Icons.settings,
                ),
                label: AppLocalizations.of(context)!.settingstab,
              ),
            ],
          ),
          body: tabs[selectedItem]),
    );
  }
}
